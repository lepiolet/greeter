#!/usr/bin/env sh

echo "* Running tests"
echo "  + Test 1"
if [ ! -x greeter ]; then
    RUNNER_DIR="build/"
else
    RUNNER_DIR=""
fi
test "$(./$RUNNER_DIR/greeter --no-style --name Aitor)" = 'Kaixo Aitor!'
