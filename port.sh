#!/bin/bash

read -p "please enter the ip address   " ip

read -p "please enter the port   " port

stat=$(nmap -p $port $ip | grep -i " open")

#echo $stat

if [[ $stat == *" open"* ]]  ; then
        echo " the port $port  is open "

else
        echo " the port $port  is close "

fi
