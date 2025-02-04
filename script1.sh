#!/bin/bash

for i in $(seq 1 65536);
  do 
    echo "" | nc -w 1 172.17.0.7 $i 2>/dev/null | grep -v "Connection refused" && echo "Porta: $i";
  done
