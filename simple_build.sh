#!/bin/bash
apt install docker.io
#нужно ли скачивать образ ubuntы 20.04?
#git clone https://github.com/NT-developeR/docker_demo
docker build -t testap
#поменять на корректные порты
docker run - d -p 8888:8080 testapp