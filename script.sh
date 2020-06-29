#!/bin/bash
curl -Ls https://github.com/wazuh/wazuh/archive/v3.13.0.tar.gz | tar zx
cd wazuh-*
make -C src clean
make -C src clean-deps
echo "Complete!"

/var/ossec/bin/manage_agents
