#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

if ! command -v javac >/dev/null 2>&1; then
  echo "JDK not found. Install JDK 17 or newer and add it to PATH."
  exit 1
fi

mkdir -p out
echo "Compiling College Assessment Portal..."
javac -d out src/Main.java
echo "Starting College Assessment Portal..."
java -cp out Main
