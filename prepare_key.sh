#!/bin/bash
openssl genrsa -out privkey.pem 1024
openssl req -new -x509 -key privkey.pem -out cacert.pem -days 1095



# test
# ./ssl_server 7838 1 cacert.pem privkey.pem
# ./ssl_client 127.0.0.1 7838