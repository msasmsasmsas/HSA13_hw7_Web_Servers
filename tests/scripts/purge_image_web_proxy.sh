#!/bin/sh

#http PURGE http://web-proxy/purge/images/AI.png

echo "Sending PURGE request..."
curl -v -X PURGE http://web-proxy/purge/images/AI.png
curl -v -X PURGE http://web-proxy/images/AI.png

echo "Checking if cache is cleared..."
curl -I http://web-proxy/purge/images/AI.png
curl -I http://web-proxy/images/AI.png
