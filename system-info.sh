echo "============Today's Date==========="
date
echo "==========Sysytem uptime=========="
uptime
echo "===========Sysytem Info=========="
echo "Hostname $(hostname)"
echo "OS       : $(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')"
echo "============Top 5 disk usage==============="
df -h --output=source,size,used,avail,pcent,target | sort -k5 -nr | head -5
echo "==========Memory Usage==========="
free -h 
echo "========== Top 5 CPU Processes =========="
ps -eo pid,comm,%cpu --sort=-%cpu | head -6
