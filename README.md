# Openconnect vpn client
shell script wrapper openconnect vpn client

#To connect to openconnect you have to enter username and password and server address so I made this shell script wrapper
#to make it easy for anyone like me.

# Running openconnect requires sudo, presumably because it affects resolution
# So, I added password-less sudo ability for the openconnect command.
sudo nano -f /etc/sudoers

# copy below line inside sudoers file
%admin  ALL=(ALL) NOPASSWD: /usr/local/bin/openconnect

# Give it executable permission
Sudo chmod +x VPN.sh

# lunch the vpn client using below command
sh VPN.sh start

# Done.
