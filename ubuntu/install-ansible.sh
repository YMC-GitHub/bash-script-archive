#!/bin/bash

#info "install ansible ..." "info" "$MY_INFO_ENABLE"
apt-get install -y software-properties-common
apt-add-repository --yes ppa:ansible/ansible
apt-get update -y
apt-get install -y --force-yes ansible

ansible --version
