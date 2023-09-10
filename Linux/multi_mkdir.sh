#!/bin/bash

for i in `seq 0 9`
do
	mkdir "$1 $((${i}+1))"
done
