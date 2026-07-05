#!/bin/bash

hash="$1"

# Remove {xor} prefix
encoded="${hash#\{xor\}}"

# Decode Base64 and XOR with 0x5F
echo "$encoded" | base64 -d | \
perl -e '
binmode(STDIN);
while (read(STDIN,$c,1)) {
    print chr(ord($c) ^ 0x5F);
}
'