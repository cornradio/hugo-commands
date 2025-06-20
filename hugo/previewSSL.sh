#!/bin/bash

# 项目目录
HUGO_DIR="/Users/kasusa/Documents/GitHub/hugo-stacktheme"

# 证书文件
CERT_FILE="$HUGO_DIR/cert.pem"
KEY_FILE="$HUGO_DIR/key.pem"

# 检查证书是否存在
if [[ ! -f "$CERT_FILE" || ! -f "$KEY_FILE" ]]; then
  echo "🔐 正在生成自签名证书..."
  openssl req -x509 -newkey rsa:2048 -nodes -keyout "$KEY_FILE" -out "$CERT_FILE" -days 365 \
    -subj "/C=CN/ST=Local/L=Localhost/O=LocalDev/OU=Dev/CN=127.0.0.1"
  echo "✅ 证书已生成：$CERT_FILE 和 $KEY_FILE"
else
  echo "🔒 已检测到证书文件，跳过生成。"
fi

# 启动 Hugo 本地服务器
echo "🚀 正在启动 Hugo..."
hugo server \
  -p 51000 \
  -s "$HUGO_DIR" \
  --bind 127.0.0.1 \
  --baseURL "https://127.0.0.1:51000/" \
  --tlsCertFile "$CERT_FILE" \
  --tlsKeyFile "$KEY_FILE"
