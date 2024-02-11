# # Instance Reachability Check Script\\


This Bash script  checks the health and reachability of a remote AWS instance using SSH. It is designed to routinely check whether your EC2 instances are reachable, providing a simple way to determine their health status.
## Configuration

-   **AWS Instance Configuration:**
    -   Open the script and update the following variables:
        -   `aws_instance_ip`: Replace with the private IP address of your AWS instance.
        -   `key_file`: Replace with the complete path to your private key file (.pem).
-  **Run the Script:**
        
    `./instance_reachability_check/instance_reachability.sh` 
    
-  **Output:**
    
    -   The script will attempt to SSH into the specified AWS instance.
    -   If the SSH connection is successful, it will print **"Host Reachable"**.
    -   If the SSH connection fails, it will print **"Host Unreachable"**.

## ## Routine Checks and Scheduling

-   This script is designed to be used for routine health checks of your EC2 instances. You can configure it to run in the following ways:
    -   **Launch on Startup (Mac):**
        -   You can set the script to run on startup by adding it to your user's login items.
    -   **Cron Job (Periodic Checks):**
        -   Schedule the script to run periodically using cron jobs. For example, to run every hour, you can add the following entry to your crontab:
           
            `0 * * * * /<Complete_path_to>/instance_reachability.sh`

