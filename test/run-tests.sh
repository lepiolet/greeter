#!/usr/bin/env sh

set -xe

echo "* Running tests"
echo "  + Test 1"
RUNNER_DIR=""
if [ -f greeter ]; then
    if [ ! -x greeter ]; then
        chmod +x greeter
    fi
else
    RUNNER_DIR="/build"
fi
test "$(.${RUNNER_DIR}/greeter --no-style --name Aitor)" = 'Kaixo Aitor!'
test "$(.${RUNNER_DIR}/greeter --no-style --name Patxi)" = 'Kaixo Patxi!'
