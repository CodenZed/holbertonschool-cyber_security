#!/bin/bash
subfinder -silent -d $1 | tee >(while read h; do echo "$h,$(dig +short $h | head -n1)"; done > $1.txt)
