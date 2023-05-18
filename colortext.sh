#!/usr/bin/env bash

for c in 90 31 91 32 33 34 35 95 36 97; do
	printf "\r \e[${c}m IF WE EVER BROKE UP, I'D NEVER BE SAD \e[0m "
	sleep 1
done
