#!/bin/bash

#start websocket-proxy server
currpath=`pwd`
basename=`basename $currpath`
if [ "$basename" = "bin" ];then
cd ../
fi
nohup java -Xms512m -Xmx512m -jar ./lib/netty-websocket-proxy-1.3.4.jar -s -conf="./conf/config-example-server.json" >/dev/null 2>&1 &
