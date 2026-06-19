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

# Test: greeting with no argument falls back to the default ("World").
out="$(./greet.sh)"
if [ "$out" = "Hello, World!" ]; then
  echo "PASS: default greeting"
else
  echo "FAIL: default greeting -> $out"
  exit 1
fi

echo "All tests passed."
