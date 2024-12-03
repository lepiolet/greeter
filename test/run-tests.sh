#!/usr/bin/env sh

set -xe

echo "* Running tests"
echo "  + Test 1"
test "$(./greeter/greeter --no-style --name Aitor)" = 'Kaixo Aitor!'
