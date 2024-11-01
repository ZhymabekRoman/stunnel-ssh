#!/bin/sh

echo "Starting sslh"

exec /usr/sbin/sslh --foreground --user sslh --listen 0.0.0.0:2243 --ssh dropbear-service:822
# , "--tls", "https-service:8443"]
