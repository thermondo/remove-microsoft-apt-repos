#!/bin/bash

if [[ $RUNNER_OS = "Linux" ]]
then
    grep -lr microsoft /etc/apt/sources.list.d/ |
    while read -r apt_file
    do
        sudo rm "$apt_file"
    done
fi
