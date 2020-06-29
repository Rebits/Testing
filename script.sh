#!/bin/bash
curl -Ls https://github.com/wazuh/wazuh/archive/v3.13.0.tar.gz | tar zx
cd wazuh-*
echo 'USER_LANGUAGE="en"' >> preloaded-vars.conf
echo 'USER_NO_STOP="y"' >> preloaded-vars.conf
echo 'USER_INSTALL_TYPE="server"' >> preloaded-vars.conf
echo 'USER_DIR="/var/ossec"' >> preloaded-vars.conf
echo 'USER_ENABLE_EMAIL="n"' >> preloaded-vars.conf
echo 'USER_ENABLE_SYSCHECK="y"' >> preloaded-vars.conf
echo 'USER_ENABLE_ROOTCHECK="y"' >> preloaded-vars.conf
echo 'USER_ENABLE_OPENSCAP="y"' >> preloaded-vars.conf
echo 'USER_WHITE_LIST="n"' >> preloaded-vars.conf
echo 'USER_ENABLE_SYSLOG="y"' >> preloaded-vars.conf
echo 'USER_CA_STORE="n"' >> preloaded-vars.conf
./install.sh
echo "Complete!"


