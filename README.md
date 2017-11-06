[![Build Status](https://travis-ci.org/KartulUdus/RenamablePotato.svg?branch=master)](https://travis-ci.org/KartulUdus/RenamablePotato)

# RenamablePotato

i'll rename this later

# Requirements

* Virtualbox
* Vagrant

# Usage

 `vagrant up`
 * Creates vm with ubuntu 16.04
 * Creates mysql database potato:potato@localhost:3307
 * Installs wordpress and connects to db
 * Deploys monitoring application "NetData"
 * installs nginx as reverse proxy

 You can visit the pretty website you just launched on `http://192.168.11.100/`

 The admin panel is available via `http://192.168.11.100/wp-admin` un:pw = potato:potato

 Netdata nonitoring can be viewed in `http://192.168.11.100/monitor`

 To stop netdata:
 * `vagrant ssh` - access the vagrant box via ssh
 * `sudo service netdata stop` - stops the monitoring server

 `vagrant halt` to stop the machine
 `vagrant destroy` to delete the VM

 # Test and gathering data

 Repo includes continuous integration with travis-ci.
 This is also visible by the pretty green badge at the top of the readme.
 This runs on every comitt and builds can be viewed by clicking on it.
 It checks the build against 14 versions of ansible.

 For example you can see a reason why ansible 1.9.6 sucks in

`https://travis-ci.org/KartulUdus/RenamablePotato/builds/298246589`