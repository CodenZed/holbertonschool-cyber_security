#!/bin/bash
subfinder -silent -d $1 | tee >(awk '{cmd="dig +short " $1 " | head -n1"; cmd | getline ip; close(cmd); if(ip!="") print $1 "," ip > "'$1'.txt"}')
