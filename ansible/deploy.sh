#!/bin/bash
ansible-playbook -i inventories/development nuget.yml -e certificate_file=.secrets/bether.net.cer -e private_key_file=.secrets/bether.net.key -e package_version=1.0.0
