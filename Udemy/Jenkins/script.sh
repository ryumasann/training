#!/bin/bash

NAME=$1
LASTNAME=$2
SHOW=$3

if [ $SHOW = "true" ]; then
    echo "Hello, $NAME $LASTNAME"
else
    "If you wnt to see the name, please mark the show option."
fi