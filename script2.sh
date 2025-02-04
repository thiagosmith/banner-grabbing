#!/bin/bash

seq 1 65536 | xargs -P 100 -I {} bash -c 'echo "" | nc -w 1 127.0.0.1 {} 2>/dev/null && echo "Porta: {}"'
