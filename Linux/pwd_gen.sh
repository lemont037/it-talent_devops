#!/bin/bash

letters="abcdefghijklmnopqrstuvxwyz"
numbers="1234567890"
s_chars="!@#$%^&*()-+="

char_op=(${letters} ${numbers} ${s_chars})

echo "Enter the password len:"
read pwd_len

pwd=""
for i in `seq 1 $pwd_len`
do
	op=${char_op[$RANDOM%3]}
	pwd=$(echo $pwd${op:$(($RANDOM % ${#op})):1})
done

echo $pwd
