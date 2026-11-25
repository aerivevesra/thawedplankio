#!/usr/bin/env bash
set -e
LIB="light-vest.a"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "https://github.com/aerivevesra/thawedplankio/releases/download/crimson-badger-clever-harbor/light-vest.a"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
