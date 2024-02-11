#!/bin/bash

check_instance_health() {
    local instance_ip=$1
    local key_file=$2

        ssh -i "$key_file" ec2-user@"$instance_ip" 'echo "Host Reachable." || echo "Host Unreachable"'
}

aws_instance_ip="<host private IP>"
key_file="<path to key_file.pem>"

check_instance_health "$aws_instance_ip" "$key_file"
