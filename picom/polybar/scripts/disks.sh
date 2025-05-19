#!/bin/bash
mounts=$(lsblk -o NAME,MOUNTPOINT | grep -v '^/' | grep -v 'NAME' | grep -v '^$' | awk '{print $2}' | grep -v '^$')
if [ -z "$mounts" ]; then
    echo "💾 0"
else
    echo "💾 $(echo "$mounts" | wc -l)"
fi
