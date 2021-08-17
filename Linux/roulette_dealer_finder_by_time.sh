#!/bin/bash 

cat $1 | grep -i "$2 $3" | awk -F" " '{print "Blackjack:"$3, $4, "Roulette:"$5, $6, "Texas:"$7, $8}'
