#!/bin/bash

# 检测网络的命令，这里以 ping 百度为例
ping -c 4 -W 10 www.baidu.com

# 如果 ping 失败（$? 是上一个命令的退出状态），则重启路由器
if [ $? -ne 0 ]; then
    echo "Can't ping, restart router"
    # SSH 连接到路由器并重启
    ssh root@192.168.32.1 "sudo reboot"
fi