#!/bin/bash
CHECK_NFS_INSTALLED=`rpm -qa | grep nfs-utils`

if [ -z "$CHECK_NFS_INSTALLED" ]
then
    printf "Yum package nfs-utils is not installed.\n"
    printf "Installing package.\n"
else
    if [[ "$CHECK_NFS_INSTALLED" == *nfs-utils-* ]]
    then
        printf "Yum package nfs-utils is installed.\n"
    fi
fi



yum install -y nfs-utils
