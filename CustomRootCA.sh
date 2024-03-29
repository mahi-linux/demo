#!/bin/bash
# This script is used to upload the custom-root-ca
# Created by Mahesh
# version 1.0

echo "$CustomRootCA" > CustomRootCA

file='CustomRootCA'

if [ -f $file ]; then
cat $file

echo "Validating custom root ca file ...!"

cp CustomRootCA /usr/local/share/ca-certificates/customrootca.crt

update-ca-certificates > /dev/null 2>&1

rm -f /usr/local/share/ca-certificates/customrootca.crt

update-ca-certificates --fresh > /dev/null 2>&1

openssl verify $file
   
   if [ $? = 0 ] ;then
   echo "certificate found to be valid..!!"
   else
   echo "It's not a valid root CA"
   exit 0
   fi

else
echo "file not found"
exit 1
fi
