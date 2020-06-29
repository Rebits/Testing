#!/bin/bash
curl -Ls https://github.com/wazuh/wazuh/archive/v3.13.0.tar.gz | tar zx
cd wazuh-*
printf 'USER_LANGUAGE="en"\n
USER_NO_STOP="y"\n
USER_INSTALL_TYPE="server"\n
USER_DIR="/var/ossec"\n
USER_ENABLE_SYSCHECK="y"\n
USER_ENABLE_ROOTCHECK="y"\n
USER_ENABLE_OPENSCAP="y"\n
USER_ENABLE_ACTIVE_RESPONSE="y"' > preloaded-vars.conf
./install.sh
echo "Complete!"
