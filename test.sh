#!/bin/bash
# This script is used to upload the custom-root-ca
# Created by Mahesh
# version 1.0

set -x

file='${workspace}/custom-root-ca'

ls -altr $file
ls -altr $file/custom-root-ca

else
echo "file not found"
exit 1
fi
