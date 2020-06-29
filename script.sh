#!/bin/bash
curl -Ls https://github.com/wazuh/wazuh/archive/v3.13.0.tar.gz | tar zx
cd wazuh-*
make -C src clean
make -C src clean-deps
ls /var/ossec/bin/
/var/ossec/bin/manage_agents
