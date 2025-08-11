#!/bin/bash

read -p "please enter the first number " one
read -p "please enter the second number " two
read -p "please choose the operation (add , sub, div, multiplication ) " operater

if [ $operater == "add" ] ; then
        total=$((one + two))
        echo $total

elif [ $operater == "sub" ] ; then
        total=$((one - two))
        echo $total

elif [ $operater == "div" ] ; then
        if [ $two -eq 0 ] ; then
                echo "Error: division by zero "
                exit 1
        fi
        total=$((one / two))
        echo $total

elif [ $operater == "multiplication" ] ; then
        total=$((one * two))
        echo $total

fi
