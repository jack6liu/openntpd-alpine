#!/bin/bash
NAME=${NAME:='ntpserver'}
IMG='jack6liu/openntpd'
TAG='alpine'

if [[ "$1" ]]; then
    NAME=$1
fi
if [[ "$2" ]]; then
    PORT=$2
fi

echo ">> run ${NAME}<<"
docker run --detach              \
           --name ${NAME}        \
           --restart always      \
           --cap-add SYS_TIME    \
           --cap-add SYS_NICE    \
           --publish 123:123/udp \
           ${IMG}:${TAG}
