#!/usr/bin/env bash
set -e

# Test: greeting with an explicit name.
out="$(./greet.sh Claude)"
if [ "$out" = "Hello, Claude!" ]; then
  echo "PASS: named greeting"
else
  echo "FAIL: named greeting -> $out"
  exit 1
fi

echo "All tests passed."
