#!/bin/bash

## Make Update
echo "Upadte APT Database"
echo "+++++++++++++++++++"
sudo apt-get update
clear

echo "Do you wish to install NFS-Client?"
echo "++++++++++++++++++++++++++++++++++"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo apt-get install nfs-common; break;;
        No ) exit;;
    esac
done