#!/bin/bash
apt update
#проверить будет ли работать подтверждение через Y
apt install docker.io -y
#git clone https://github.com/NT-developeR/docker_demo
docker build -t testapp .
#поменять на корректные порты
docker run - d -p 8888:8080 testapp