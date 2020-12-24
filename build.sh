#!/bin/bash
# Program:
#	用來 stop ubuntu-os docker container 的腳本
# History:
# 2020/09/26	nxshen	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

ID=$(echo ${DISPLAY#*:})
ID=$(echo ${ID%.*})
echo ID=$ID
export XAUTH_ID="$(xauth list | grep "unix:$ID")"
echo XAUTH_ID=$XAUTH_ID

echo "building container: ubuntu-os"
docker-compose up --build -d ubuntu-os

exit 0
