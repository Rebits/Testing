#!/bin/bash
sudo su
curl -Ls https://github.com/wazuh/wazuh/archive/v3.13.0.tar.gz | tar zx
cd wazuh-*
make -C src clean
make -C src clean-deps
systemctl start wazuh-manager
