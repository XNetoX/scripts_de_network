#!/bin/bash

#Site pingado
echo "Digite o site"
read site

#Pingar o site
ping -c 1 $site > log.txt

#Ip
ip=`cat log.txt | grep "icmp_seq" | cut -d"(" -f2 | cut -d")" -f1`
echo "Ip do site:" $ip

#Site no ar
host=`cat log.txt | grep "received" | cut -d"," -f2 | cut -d"," -f1`
echo "Resposta:" $host
