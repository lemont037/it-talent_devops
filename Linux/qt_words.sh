#!/bin/bash

words=$(wc -w $1)

read -ra words <<< "${words}"

echo "There's ${words[0]} words in ${words[1]}"
