#!/bin/bash
# Program:
#	用來建立 ubuntu-os docker container 的腳本
# History:
# 2020/09/26	nxshen	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

ID=$(echo ${DISPLAY#*:})
ID=$(echo ${ID%.*})
#echo ID=$ID
export XAUTH_ID="$(xauth list | grep "unix:$ID")"
echo "
XAUTH_ID=$XAUTH_ID
"

docker-compose up --build -d ubuntu-os

container_id=`docker ps | grep ubuntu | cut -c1-12`
docker exec -it $container_id xauth add $XAUTH_ID

exit 0
