#/bin/bash/
printf 'enter n \n'
read a
i=1
current=0
while [ "$i" -le "$a" ]
do
    t=$((a))
    r=1
    while [ "$r" -le "$t" ]
    do
        if [ "$current" -eq 0 ]
        then
            printf '\xe2\x96\x88'
            current=1
        else
            printf ' '
            current=0
        fi
        r=$((r+1))
    done
    current=$((!current))
    printf '\n'
    i=$((i+1))
done
