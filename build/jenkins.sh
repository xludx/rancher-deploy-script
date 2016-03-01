#!/bin/bash

RANCHER_LOC="http://$RANCHER_ACCESS_KEY:$RANCHER_SECRET_KEY@192.168.1.48"
SERVICE_NAME="alpine-nginx"
URL="$RANCHER_LOC/v1/services?name=$SERVICE_NAME"

# echo '{"hostname":"test","domainname":"example.com"}' | python -c 'import json,sys;obj=json.load(sys.stdin);print obj[0]["hostname"]'

curl $URL > dump
cat dump