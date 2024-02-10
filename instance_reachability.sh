#!/bin/bash



aws_instance_ips=("your_instance_ip")
key_file="~/keys/keyfile.pem"

for instance_ip in "${aws_instance_ips[@]}"; do
    check_instance_health "$instance_ip" "$key_file"
done