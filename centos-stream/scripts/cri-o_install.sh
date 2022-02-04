#!/bin/bash
#### Install CRI-O #####
#Reference: https://cri-o.io/
VERSION="1.23"
OS="CentOS_8_Stream"
curl -L -o /etc/yum.repos.d/devel:kubic:libcontainers:stable.repo https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/$OS/devel:kubic:libcontainers:stable.repo
curl -L -o /etc/yum.repos.d/devel:kubic:libcontainers:stable:cri-o:$VERSION.repo https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable:cri-o:$VERSION/$OS/devel:kubic:libcontainers:stable:cri-o:$VERSION.repo


yum remove docker-ce docker-ce-cli containerd.io
yum install -y cri-o
systemctl daemon-reload
systemctl enable crio --now
