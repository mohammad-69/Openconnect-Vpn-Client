# Openconnect vpn client
OpenConnect Vpn Client for mac+linux users 

This is a terminal wrapper for openconnect 

#To connect to openconnect you have to enter username and password and server address so I made this shell script wrapper
#to make it easy for anyone like me.

# Running openconnect requires sudo, presumably because it affects resolution
# So, I added password-less sudo ability for the openconnect command.
sudo nano -f /etc/sudoers

# copy below line inside sudoers file
%admin  ALL=(ALL) NOPASSWD: /usr/local/bin/openconnect

# Give it executable permission
Sudo chmod +x VPN.sh

# launch the vpn client using below command
sh VPN.sh start

# To stop the vpn client and kill the process run
sh VPN.sh stop

# Done.
