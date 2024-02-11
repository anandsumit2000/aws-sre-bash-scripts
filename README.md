## AWS SRE Bash Scripts 

This Repository contains a number of automations written in shell script to ease daily tasks of an SRE that he would typically do from AWS console. The range of functions like checking whether hosts are active, logs are exported and rotated, backups are up-to-date or not and so on (which I will be populating along the line).

The scripts are arranged directory wise and each of the directories contains a related README file to help you launch and set up.

## Contents

1. **Instance/Hosts Reachability:** \
  A shell script that under the hood runs SSH to find whether the hosts are reachable or not.