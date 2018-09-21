#!bin/bash

openssl req \
    -newkey rsa:2048 \
    -x509 \
    -nodes \
    -keyout localhost_<port>.key \
    -new \
    -out localhost_<port>.crt \
	-subj /CN=localhost:<port> \
    -config ./openssl-custom.cnf \
    -sha256 \
    -days 365
