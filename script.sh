#!/bin/bash
curl -Ls https://github.com/wazuh/wazuh/archive/v3.13.0.tar.gz | tar zx
cd wazuh-*
cp /var/jenkins/Testing/preloaded-vars.conf ./etc/
cat ./etc/preloaded-vars.conf
#./install.sh
echo "Complete!"


