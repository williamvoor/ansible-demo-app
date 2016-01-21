#!/bin/bash

ansible-playbook -i hosts -c local site.yml
sleep 3000
