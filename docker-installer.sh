#!/bin/bash
## 更新套件清單並安裝所需的套件
sudo apt-get update
sudo apt-get install -yy ca-certificates curl gnupg

## 建立目錄並下載 Docker 官方的 GPG 金鑰
sudo install -m 0755 -d /etc/apt/keyrings

# 判斷是 Debian 還是 Ubuntu 並下載對應的 GPG 金鑰
if grep -qi "ubuntu" /etc/os-release; then
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
else
    sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
fi
sudo chmod a+r /etc/apt/keyrings/docker.asc

## 將 Docker 的 repository 加入 Apt sources
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/$(. /etc/os-release && echo "$ID") \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

## 更新 Apt 套件清單並安裝 Docker
sudo apt-get update
sudo apt-get install -yy docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

## 確認 Docker 是否正確安裝
sudo docker version
