#!/bin/bash
# Program:
#	用來 stop ubuntu-os docker container 的腳本
# History:
# 2020/09/26	nxshen	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

container_id=`docker ps | grep ubuntu | cut -c1-12`

echo "stopping container: ubuntu-os"
echo "container_id = ${container_id}"

docker stop $container_id

exit 0
