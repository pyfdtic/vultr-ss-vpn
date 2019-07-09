#!/bin/bash
#

GET_IP_URL='ip.360.cn/IPShare/info'
PUBLIC_IP=`curl $GET_IP_URL | jq '.ip' | sed 's/"//g'`

ansible-playbook -i hosts.ini -e "PUBLIC_IP=$PUBLIC_IP/32" firewall.yml
