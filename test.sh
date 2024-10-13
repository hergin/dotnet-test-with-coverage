#!/bin/bash

test_result="$(dotnet test --nologo -v q)"

if [[ $test_result =~ Failed:[[:space:]]*0 ]]; then
    echo "Nothing failed!"
fi