#!/bin/bash

if ! netstat -tulnp | grep -q ':80\s'; then
    echo "80 port is not used, try to start pelican"
    pelican --listen -p 80 --bind 0.0.0.0 > pelican.log 2>&1 &
else
    echo "80 was used, no need to start pelican..."
fi
