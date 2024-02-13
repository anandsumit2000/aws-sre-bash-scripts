#!/bin/bash

check_instance_health() {
    local instance_ip=$1
    local key_file=$2

        ssh -i "$key_file" ec2-user@"$instance_ip" 'echo "Host Reachable." || echo "Host Unreachable"'
}

# Specify private IPs of Hosts
aws_instance_ips=("host1" "host2" "host3")

# Specify the complete path to the respective keys to the hosts in same order
key_files=("host1" "host2" "host3")


for i in {1..${#aws_instance_ips[@]}}; do
    aws_instance_ip="${aws_instance_ips[$i]}"
    key_file="${key_files[$i]}"
    check_instance_health "$aws_instance_ip" "$key_file"
done