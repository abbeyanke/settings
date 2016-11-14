sudo systemctl start `systemctl | grep failed | awk '{print }' | sed 's/\.s[a-z]*$//'`
