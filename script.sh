#!/bin/bash
curl -Ls https://github.com/wazuh/wazuh/archive/v3.13.0.tar.gz | tar zx
cd wazuh-*
cp ../preloaded-vars.conf ./etc/
./install.sh
