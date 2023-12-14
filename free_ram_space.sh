#!/bin/bash

#monitoring ram space ...

free_space=$(free -mt | grep "Total" | awk '{print$4}')

limit=1000

if [[ $free_space -le $limit ]]
then 
	echo "ram is running out of space "
else
	echo "ram is sufficient -$free_space Mi "
fi
