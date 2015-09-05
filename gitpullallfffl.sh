#!/bin/bash

for directory in *
do
    if [ -d "$directory" ]; then
        if [ -d "$directory/.git" ]; then
            cd "$directory" && git pull ; cd ../
        fi
    fi
done

