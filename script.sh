#!/bin/bash
curl -Ls https://github.com/wazuh/wazuh/archive/v3.13.0.tar.gz | tar zx
cd wazuh-*
echo 'USER_LANGUAGE="en"' >> etc/preloaded-vars.conf
echo 'USER_NO_STOP="y"' >> etc/preloaded-vars.conf
echo 'USER_INSTALL_TYPE="server"' >> etc/preloaded-vars.conf
echo 'USER_DIR="/var/ossec"' >> etc/preloaded-vars.conf
echo 'USER_ENABLE_EMAIL="n"' >> etc/preloaded-vars.conf
echo 'USER_ENABLE_SYSCHECK="y"' >> etc/preloaded-vars.conf
echo 'USER_ENABLE_ROOTCHECK="y"' >> etc/preloaded-vars.conf
echo 'USER_ENABLE_OPENSCAP="y"' >> etc/preloaded-vars.conf
echo 'USER_WHITE_LIST="n"' >> etc/preloaded-vars.conf
echo 'USER_ENABLE_SYSLOG="y"' >> etc/preloaded-vars.conf
echo 'USER_CA_STORE="n"' >> etc/preloaded-vars.conf
cat  etc/preloaded-vars.conf
./install.sh
echo "Complete!"


