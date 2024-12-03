#!/usr/bin/env sh

echo "* Running tests"
echo "  + Test 1"
test "$(./build/greeter --no-style --name Aitor)" = 'Kaixo Aitor!'
