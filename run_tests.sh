#!/bin/bash

docker run -i wrk  https://www.google.com/  > result

docker run -i -v `pwd`:/data wrk  -s example.lua https://www.google.com/  > result2

echo "==> Validating the test results..."
sh -c "[ -s result ]"
sh -c "[ -s result2 ]"

# SUCCESS: $? == 0
# FAIL:    $? > 0