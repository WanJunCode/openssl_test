#!/bin/bash
openssl genrsa -out privkey.pem 1024
openssl req -new -x509 -key privkey.pem -out cacert.pem -days 1095