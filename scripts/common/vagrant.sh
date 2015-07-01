#!/bin/bash

case "$PACKER_BUILDER_TYPE" in

virtualbox-iso|virtualbox-ovf)
    mkdir ~vagrant/.ssh
    wget --no-check-certificate \
        'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' \
        -O ~vagrant/.ssh/authorized_keys
    chown -R vagrant ~vagrant/.ssh
    chmod -R go-rwsx ~vagrant/.ssh
    ;;

vmware-iso|vmware-vmx)
    echo 'no vagrant here'>/tmp/vagrant
    ;;

parallels-iso|parallels-pvm)
    echo 'no vagrant here'>/tmp/vagrant
    ;;

qemu|qemu-kvm)
    echo 'no vagrant here'>/tmp/vagrant
    ;;

*)
    echo "Unknown Packer Builder Type >>$PACKER_BUILDER_TYPE<< selected."
    echo "Known are virtualbox-iso|virtualbox-ovf|vmware-iso|vmware-vmx|parallels-iso|parallels-pvm|qemu|qemu-kvm."
    ;;

esac
