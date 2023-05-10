#/bin/bash/
echo "enter value of n"
read n
i=1
while [ "$i" -le "$n" ]
do
    j=1
    while [ "$j" -le "$i" ]
    do
        printf "$j  "
        j=$((j+1))
    done
    i=$((i+1))
    echo "\n"
done

