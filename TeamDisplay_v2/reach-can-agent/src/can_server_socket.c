#define _GNU_SOURCE

#include <errno.h>
#include <stdio.h>
#include <sys/socket.h> 
#include <sys/un.h>
#include <arpa/inet.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <linux/can.h>
#include <net/if.h>
#include <sys/ioctl.h>

#include "can_agent.h"

#define MAXPENDING 1

static void canDieWithError(char *errorMessage)
{
    LogMsg(LOG_ERR, "Exiting: %s\n", errorMessage);
    exit(1);
}

static int canCreateServerSocket(int instance)
{
    int sock = -1;
    int rv = 0;
    struct sockaddr_can sAddr;
    struct ifreq ifr;

    sock = socket(PF_CAN, SOCK_RAW, CAN_RAW);
    if (sock < 0)
    {
        canDieWithError("can socket() failed");
    }

    memset(&ifr, 0, sizeof(ifr));
    sprintf(ifr.ifr_name, "can%d", instance);


    rv = ioctl(sock, SIOGIFINDEX, &ifr);
    if (rv < 0)
    {
        canDieWithError("Error: ioctl(SIOGIFINDEX) failed CAN BUS may not be up.");
    }

    memset(&sAddr, 0, sizeof(sAddr));
    sAddr.can_family = AF_CAN;
    sAddr.can_ifindex = ifr.ifr_ifindex;

    rv = bind(sock, (struct sockaddr *)&sAddr, sizeof(sAddr));


    if (rv < 0)
    {
        canDieWithError("Error: CAN bind() failed.");
    }

    LogMsg(LOG_INFO, "Handling CAN Bus client\n");

    return sock;
}

int canServerSocketInit(int instance)
{
    int listenFd = -1;
    listenFd = canCreateServerSocket(instance);
    return listenFd;
}


/**
 * Reads a single message from the socket connected to the 
 * tcp/ip server port. If no message is ready to be received, the call
 * will block until one is available. 
 * 
 * @param socketFd the file descriptor of for the already open 
 *                 socket connecting to the tio-agent
 * @param msgBuff address of a contiguous array into which the 
 *                message will be written upon receipt from the
 *                tio-agent
 * @param bufferSize the number of bytes in msgBuff
 * 
 * @return int 0 if no message to return (handled here), -1 if 
 *         recv() returned an error code (close connection) or
 *         >0 to indicate msgBuff has that many characters
 *         filled in
 */
int canServerSocketRead(int socketFd, char *msgBuff)
{
    int cnt;
    int i;
    struct can_frame frame;
    memset(&frame, 0, sizeof(frame));
    cnt = read(socketFd, &frame, sizeof(frame));

    if (cnt < 0)
    {
        LogMsg(LOG_INFO, "%s(): recv() failed, client closed\n", __FUNCTION__);
        close(socketFd);
        return -1;
    }
    else
    {
        LogMsg(LOG_INFO, "CAN message - ID: 0x%lx (%ld)  dlc: 0x%02X  data: %02X %02X %02X %02X %02X %02X %02X %02X\n",
               frame.can_id, frame.can_id,
               frame.can_dlc,
               frame.data[0], frame.data[1], frame.data[2], frame.data[3], frame.data[4], frame.data[5], frame.data[6], frame.data[7]);

#define CUSTOMER_XLATE
#ifdef  CUSTOMER_XLATE

        // YOUR CAN-to-TIO TRANSLATE CODE GOES HERE
        int n = 0;
        float RESStmp = 0.0;
        float RESSsoc = 0.0;
        //char DrvMode[7];
        float MotMaxTrq = 332.0;
        float F_MotTrq = 0.0;
        // float F_MotSpd = 0.0;
        float F_MotTmp = 0.0;
        float R_MotTrq = 0.0;
        // float R_MotSpd = 0.0;
        float R_MotTmp = 0.0;

        // example translate - see CAN_messages.docx for message details
        switch (frame.can_id)
        {
            // all little endian
            // some signed, some unsigned
            case 0x504:          // RESS Data
                // RESS temperature: rt=%s, signed, bytes 4 and 5
                RESStmp = 0.5*(frame.data[4]);
                if ((0x01 & frame.data[5]) >> 0 == 1)
                {
                    RESStmp = -RESStmp;
                }
                msgBuff[0] = 'r';
                msgBuff[1] = 't';
                msgBuff[2] = '=';
                n = sprintf(&msgBuff[3],"%.1f\n", RESStmp);

                // RESS SOC: rs=%s, unsigned, bytes 2 and 3
                RESSsoc = 0.1*(((0x03 & frame.data[3]) << 8) + frame.data[2]);
                msgBuff[n] = 'r';
                msgBuff[n+1] = 's';
                msgBuff[n+2] = '=';
                n = sprintf(&msgBuff[n+3],"%.1f\n", RESSsoc);

                break;
            // case 0x500:          // Driver Interface
            //     msgBuff[0] = 'd';
            //     msgBuff[1] = 'm';
            //     msgBuff[2] = '=';
            //     sprintf(&msgBuff[3], "%d\n", frame.data[1]);

            //     break;
            case 0x502:          // Rear Motor Data
                // Rear motor temp: rmtp=%s
                R_MotTmp = 0.5*(frame.data[6]);
                msgBuff[0] = 'r';
                msgBuff[1] = 'm';
                msgBuff[2] = 't';
                msgBuff[3] = 'p';
                msgBuff[4] = '=';
                n = sprintf(&msgBuff[5],"%.1f\n", R_MotTmp);

                // Rear motor torque: rmtq=%s
                R_MotTrq = 0.25*(((0x07 & frame.data[3]) << 8) + frame.data[2]);
                if ((0x08 & frame.data[3]) >> 3 == 1)
                {
                    R_MotTrq = -R_MotTrq;
                }
                msgBuff[n] = 'r';
                msgBuff[n+1] = 'm';
                msgBuff[n+2] = 't';
                msgBuff[n+3] = 'q';
                msgBuff[n+4] = '=';
                n = sprintf(&msgBuff[n+5],"%.1f\n", R_MotTrq);

                break;
            case 0x501:          // Front Motor Data
                // Front motor temp: fmtp=%s
                F_MotTmp = 0.5*(frame.data[6]);
                msgBuff[0] = 'f';
                msgBuff[1] = 'm';
                msgBuff[2] = 't';
                msgBuff[3] = 'p';
                msgBuff[4] = '=';
                n = sprintf(&msgBuff[5],"%.1f\n", F_MotTmp);

                // Front motor torque: fmtq=%s
                F_MotTrq = 0.25*(((0x07 & frame.data[3]) << 8) + frame.data[2]);
                if ((0x08 & frame.data[3]) >> 3 == 1)
                {
                    F_MotTrq = -F_MotTrq;
                }
                msgBuff[n] = 'f';
                msgBuff[n+1] = 'm';
                msgBuff[n+2] = 't';
                msgBuff[n+3] = 'q';
                msgBuff[n+4] = '=';
                n = sprintf(&msgBuff[n+5],"%.1f\n", F_MotTrq);
                
                break;
            default:
                // could issue an error here...
                LogMsg(LOG_ERR, "Unrecognized CAN message\n");
                break;
        }
        cnt = strlen(msgBuff);
#else
        // pass received messages (ASCII strings) directly on to the TIO agent.
        // note that the strings should end with a new-line char (0x0A).
        strncpy(msgBuff, (char *)frame.data, 8);
        cnt = frame.can_dlc;
        msgBuff[cnt] = '\0';
#endif
        LogMsg(LOG_INFO, "%s: cnt: %d, msgBuff: %s\n", __FUNCTION__, cnt, msgBuff);
        return cnt;
    }

}


void canServerSocketWrite(int socketFd, const char *buff)
{
    int cnt = strlen(buff);
    if (cnt > 8)
        cnt = 8;
    int i = 0;
    struct can_frame frame;

    memset(&frame, 0, sizeof(frame));

#ifdef  CUSTOMER_XLATE

        // YOUR TIO-to-CAN TRANSLATE CODE GOES HERE

        // example translate - see CAN_messages.docx for message details
        if (strncmp(buff, "st=", 3) == 0)       // Start Button
        {
            frame.can_id = 0x80;
            frame.can_dlc = 1;
            frame.data[0] = (buff[3] == '0' ? 0 : 1);
        }
        else if (strncmp(buff, "sp=", 3) == 0)  // Stop button
        {
            frame.can_id = 0x81;
            frame.can_dlc = 1;
            frame.data[0] = (buff[3] == '0' ? 0 : 1);
        }
        else
        {
            // could issue an error here...
            LogMsg(LOG_ERR, "Unrecognized TIO message: %s\n", buff);
        }
#else
    frame.can_id = 0;
    strncpy((char *)frame.data, buff, cnt);
    frame.can_dlc = cnt;
#endif

    if (write(socketFd, &frame, sizeof(frame)) < 0)
    {
        LogMsg(LOG_ERR, "CAN BUS: write() failed, %d\n",
            socketFd);
        perror("what's messed up?");
    }
    else
    {
#ifdef  CUSTOMER_XLATE
        LogMsg(LOG_INFO, "%s: sent CAN message - ID: 0x%lx (%ld)  dlc: 0x%02X  data: %02X %02X %02X %02X %02X %02X %02X %02X\n",
               __FUNCTION__,
               frame.can_id, frame.can_id,
               frame.can_dlc,
               frame.data[0], frame.data[1], frame.data[2], frame.data[3], frame.data[4], frame.data[5], frame.data[6], frame.data[7]);
#else
        LogMsg(LOG_INFO, "%s: sent = %s", __FUNCTION__, frame.data);
#endif
    }
}


