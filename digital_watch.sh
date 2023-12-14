#!/bin/bash


#digital watch ..

#text colour code for watch ..

red=$'\e[1;31m'
magneta=$'\e[1;35m'
yellow=$'\e[1;33m'
green=$'\e[1;32m'

#way 1..
for (( ;; ))
do 
	clear
	echo $magneta "$(date | awk '{print$5}')" || echo $magneta "$(date +%T)"
	sleep 1s
done

#way 2 ..

while true 
do
	clear 
	echo $red "$(date | awk '{print$5}')" || echo $red "$(date +%T)"
        sleep 1s 
done





