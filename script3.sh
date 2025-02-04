#!/bin/bash

for i in $(seq 1 65535);

  do 
    curl -s -I "172.17.0.7:$i" && echo "Porta: $i";
  done
