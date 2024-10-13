#!/bin/bash

test_result="$(dotnet test /p:CollectCoverage=true /p:Threshold=80)"

if [[ $test_result =~ "The minimum line coverage is below the specified 80" ]]; then
    echo "Coverage not reached!"
else
    echo "Coverage reached!"
fi