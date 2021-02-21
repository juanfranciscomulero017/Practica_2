#! /bin/sh

sudo dnf install epel-release -y && sudo dnf makecache && sudo dnf install ansible nfs-utils git -y

systemctl enable nfs-server.service && systemctl start nfs-server.service

git init && mkdir /home/practica2 && cd /home/practica2 && git clone https://github.com/juanfranciscomulero017/Practica_2.git
