#!/bin/bash
hping3 -S -p 80 -c 5 "$1"
