#!/usr/bin/env bash 
while :
do
     echo $((500 + ${RANDOM} % 1500)) > /proc/sys/net/ipv4/icmp_ratelimit
     echo $((500 + ${RANDOM} % 1500)) > /proc/sys/net/ipv6/icmp/ratelimit
     sleep .95
done
