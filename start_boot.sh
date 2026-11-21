#!/usr/bin/env bash
set -e
REPO="lunanibelle/resonantpit"
LIB="velvet-port.a"
URL="https://github.com/${REPO}/releases/download/crimson-canyon-calm-anchor/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
