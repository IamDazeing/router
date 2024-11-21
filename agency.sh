# #!/bin/bash
# #没用到，暂时搁置
# # 代理服务器地址和端口
# PROXY_SERVER="192.168.31.53:7890"

# # 启用代理
# enable_proxy() {
#     echo "启用代理: $PROXY_SERVER"

#     # 设置环境变量
#     echo "http_proxy=$PROXY_SERVER" >> /etc/environment
#     echo "https_proxy=$PROXY_SERVER" >> /etc/environment



#     # 重启 NetworkManager 服务以应用更改
#     sudo systemctl restart NetworkManager
# }

# # 禁用代理
# disable_proxy() {
#     echo "禁用代理"

#     # 从环境变量中删除代理设置
#     sed -i '/^http_proxy/d' /etc/environment
#     sed -i '/^https_proxy/d' /etc/environment


#     # 重启 NetworkManager 服务以应用更改
#     sudo systemctl restart NetworkManager
# }

# # 检查参数并执行相应的函数
# case "$1" in
#     enable)
#         enable_proxy
#         ;;
#     disable)
#         disable_proxy
#         ;;
#     *)
#         echo "使用方法: $0 {enable|disable}"
#         exit 1
#         ;;
# esac