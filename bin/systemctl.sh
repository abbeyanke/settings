sudo systemctl start `systemctl | grep failed | awk '{print $2}' | sed 's/\.s[a-z]*$//'`
