#!/usr/bin/env sh

set -xe

echo "* Running tests"
echo "  + Test 1"
mkdir -p greeter
if [ ! -x greeter/greeter ]; then
    cp build/greeter greeter/greeter
fi
test "$(./greeter/greeter --no-style --name Aitor)" = 'Kaixo Aitor!'
