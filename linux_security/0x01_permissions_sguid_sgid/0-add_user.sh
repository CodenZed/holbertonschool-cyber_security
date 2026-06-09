#!/bin/bash
useradd -m "$1"
echo -e "$2\n$2" | passwd "$1"
