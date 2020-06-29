#!/bin/bash
curl -Ls https://github.com/wazuh/wazuh/archive/v3.13.0.tar.gz | tar zx
cd wazuh-*
printf 'USER_LANGUAGE="en"
USER_NO_STOP="y"
USER_INSTALL_TYPE="server"
USER_ENABLE_EMAIL="n"
USER_ENABLE_SYSCHECK="y"
USER_ENABLE_ROOTCHECK="y"
USER_ENABLE_OPENSCAP="y"
USER_WHITE_LIST="n"
USER_ENABLE_SYSLOG="y"
USER_CA_STORE="n"' > etc/preloaded-vars.conf
cat  preloaded-vars.conf
./install.sh
echo "Complete!"


