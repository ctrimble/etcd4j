#!/bin/bash
sudo apt-get update

# install etcd from a github tag.
sudo mkdir /opt/etcd-v2.0.10-linux-amd64
curl -Ls https://github.com/coreos/etcd/releases/download/v2.0.10/etcd-v2.0.10-linux-amd64.tar.gz | sudo tar xzv --strip-components=1 -C /opt/etcd-v2.0.10-linux-amd64

sudo cp /vagrant/vagrant/etcd.conf /etc/init
sudo service etcd start

