#!/bin/bash

mkdir -p $HOME/.monacoin/ || true

echo "Starting monacoind"
monacoind -daemon
echo "Waiting for monacoind to startup"
sleep 5
echo "Starting lightningd"
/usr/bin/lightningd $@
