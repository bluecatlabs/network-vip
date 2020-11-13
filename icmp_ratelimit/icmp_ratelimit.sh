#!/usr/bin/env bash 
seconds="60"
while [[ ${seconds} -gt 0 ]]
do
    echo $((500 + ${RANDOM} % 1500)) > /proc/sys/net/ipv4/icmp_ratelimit
    sleep .95
    let seconds=seconds-1
done
