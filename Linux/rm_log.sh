#!/bin/bash

older_logs=$(find /var/log/ -mtime +7)

for l in $older_logs
do
	rm $l
done
