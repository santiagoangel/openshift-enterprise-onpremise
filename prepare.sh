#!/bin/bash


subscription-manager register --username=<user_name> --password=<password> --auto-attach
subscription-manager repos --disable="*"
subscription-manager repos \
    --enable="rhel-7-server-rpms" \
    --enable="rhel-7-server-extras-rpms" \
    --enable="rhel-7-server-optional-rpms" \
    --enable="rhel-7-server-ose-3.0-rpms"
    
yum remove NetworkManager
yum install wget git net-tools bind-utils iptables-services bridge-utils
yum update
yum install docker

# cat <<EOF > /etc/sysconfig/docker-storage-setup
DEVS=/dev/vdc
VG=docker-vg
EOF


# docker-storage-setup   


#
# systemctl stop docker
# rm -rf /var/lib/docker/*
# systemctl restart docker

# ssh-keygen

# for host in master.example.com \
    node1.example.com \
    node2.example.com; \
    do ssh-copy-id -i ~/.ssh/id_rsa.pub $host; \
    done

