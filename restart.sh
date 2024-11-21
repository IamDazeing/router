#!/bin/bash
# restart.sh

# 路由器的IP地址和用户名
ROUTER_IP="192.168.32.1"
ROUTER_USERNAME="root"
# 私钥的路径
PRIVATE_KEY_PATH="/root/.ssh/id_rsa"

# 使用SSH连接到路由器并重启
ssh -i "$PRIVATE_KEY_PATH" -o StrictHostKeyChecking=no $ROUTER_USERNAME@$ROUTER_IP << EOF
uptime
echo "Restarting router..."
reboot
EOF

echo "Router should be restarting now."