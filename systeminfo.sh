#! /bin/bash

echo "Server Info"
hostname && uname -a && whoami && timedatectl && cat /etc/os-release && lshw && df -Th && lscpu && uptime

