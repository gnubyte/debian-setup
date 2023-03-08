wget -O splunkforwarder-9.0.4-de405f4a7979-linux-2.6-amd64.deb "https://download.splunk.com/products/universalforwarder/releases/9.0.4/linux/splunkforwarder-9.0.4-de405f4a7979-linux-2.6-amd64.deb
dpkg -i splunkforwarder-9.0.4-de405f4a7979-linux-2.6-amd64.deb
/opt/splunkforwarder/bin/splunk enable boot-start --no-prompt --accept-license

# do something with copying configs here
mkdir /opt/splunkforwarder/etc/apps/mainapp
mkdir /opt/splunkforwarder/etc/apps/mainapp/default
#cat >> /opt/splunkforwarder/etc/apps/mainapp/default/inputs.conf << '#'
#[stanza]
# some details
# #


# do the same cat out for the outputs.conf
#     cat >> /opt/splunkforwarder/etc/apps/mainapp/default/outputs.conf << '#'
# #



# start it up
/opt/splunkforwarder/bin/splunk add forward-server <REPLACE-ME-WITH-SPLUNK-IDX>:9997 --answer-yes
/opt/splunkforwarder/bin/splunk start

# if you have a deployment server, copy the deploymentClientApp to the apps directory
# it will fill in the rest upon UF startup
