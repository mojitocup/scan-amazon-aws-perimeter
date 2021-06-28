#!/bin/bash
aws ec2 describe-addresses | grep '"PublicIp":' | cut -d ':' -f 2 | sed 's/"//g' | sed 's/,//g' | xargs nmap > perimeter.txt
