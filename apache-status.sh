#!/bin/bash

if systemctl is-active --quiet httpd; then
    status="online"
else
    status="offline"
fi

message="O Apache está $status."

#data e hora
timestamp=$(date "+%Y-%m-%d %H:%M:%S")

output_file="/keila/logs/apache_$status.txt"

echo "$timestamp - Apache: $status - $message" >> "$output_file"

echo "Concluído."
