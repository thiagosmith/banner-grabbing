#!/bin/bash

for i in $(seq 1 10); 
  do 
    echo -e "80\n443\n8080" | xargs -P 100 -I {} bash -c 'curl -s -I "172.17.0.'"$i"':{}" && echo "Porta: {} 172.17.0."'$i; 
  done
