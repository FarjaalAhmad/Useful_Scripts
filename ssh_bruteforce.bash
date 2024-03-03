#!/bin/bash

set -euo pipefail

usernames=$(< ssh_usernames.txt)
ips=$(< ips.txt)
ports=$(< ssh_ports.txt)

SSH_TIMEOUT=3

for ip in $ips; do
    for port in $ports; do
        for username in $usernames; do
            if ssh -i ~/.ssh/id_rsa -o "StrictHostKeyChecking=no" -p "$port" -o "ConnectTimeout=$SSH_TIMEOUT" "$username@$ip" 'echo "Authentication successful!"' &> /dev/null; then
                echo "Authentication successful for $username@$ip:$port"
            else
                echo "Authentication failed for $username@$ip:$port"
            fi
        done
    done
done
