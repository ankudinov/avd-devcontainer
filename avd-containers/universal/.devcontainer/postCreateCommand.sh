#!/bin/bash

pip3 install "ansible-core>=2.13.1,<2.14.0" \
&& ansible-galaxy collection install arista.avd:==${AVD_VERSION} \
&& pip3 install -r /home/vscode/.ansible/collections/ansible_collections/arista/avd/requirements.txt
