#!/bin/sh

COOKIEFILE="/tmp/wifidarmstadt.cookie"

# Mobile
curl -c "$COOKIEFILE" -A "Mozilla/5.0 (X11; Linux x86_64; rv:71.0) Gecko/20100101 Firefox/71.0" -L "https://service.thecloud.eu/service-platform/redirect/13606"
# Stationary
curl -b "$COOKIEFILE" -c "$COOKIEFILE" -A "Mozilla/5.0 (X11; Linux x86_64; rv:71.0) Gecko/20100101 Firefox/71.0" -L "https://service.thecloud.eu/service-platform/redirect/2783"

curl -b "$COOKIEFILE" -c "$COOKIEFILE" -A "Mozilla/5.0 (X11; Linux x86_64; rv:71.0) Gecko/20100101 Firefox/71.0" -L "https://service.thecloud.eu/service-platform/macauthlogin/v1"
curl -b "$COOKIEFILE" -d "terms=true" -A "Mozilla/5.0 (X11; Linux x86_64; rv:71.0) Gecko/20100101 Firefox/71.0" -L "https://service.thecloud.eu/service-platform/macauthlogin/v1/registration"
rm /tmp/wifidarmstadt.cookie
