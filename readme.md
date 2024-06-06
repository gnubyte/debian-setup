
# Debian Setup script

6-6-2024: The script now has unattended updates and auditd

Used to quickly setup all the normal stuff that you'd expect to see on a server. 

 - Default JDK
 - Default JRE
 - Python3
 - Python3 Pip
 - fail2ban
 - ufw
 - git
 - nodejs
 - npm
 - libssl-dev
 - software common properties
 - build-essential (GCC)
 - manpages-dev
 - docker


## Using this Script

6-6-2024: I recommend just copying and pasting the slim setup onto a server and running it. Make sure to change the email towards the bottom to yours however.

pretty on the nose but regardless:

`git clone https://github.com/gnubyte/debian-setup.git`

then 

`chmod +x setup.sh`

then

`./setup.sh`
