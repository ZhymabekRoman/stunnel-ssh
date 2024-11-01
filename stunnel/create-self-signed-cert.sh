#!/bin/bash
openssl genrsa -out key.pem 2048

yes "" | openssl req -new -x509 -key key.pem -out cert.pem -days 365

cat key.pem cert.pem >>stunnel.pem
