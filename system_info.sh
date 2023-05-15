#/bin/bash/

printf "SYSTEM INFO MENU \n1. Currently logged users\n2. Your shell directory\n3. Home directory\n4. Current working directory\n5. OS name and version\n6. Number of users logged in\n7. Show all available shells in your system\n8. Hard disk information\n9. CPU information\n10. Memory information\n11. File system information\n12. Currently running process\n"

read a
case $a in
    1 )
    printf 'Currently logged users\n'
    who;;
    2 )
    printf 'Your shell directory\n'
    ls;;
    3 )
    printf 'Home directory\n'
    echo "$HOME";;
    4 )
    printf 'Current working directory\n'
    pwd;;
    5 )
    printf 'OS name and version\n'
    uname -s
    uname -r;;
    6 )
    printf 'Number of users logged in\n'
    who | wc -l;;
    7 )
    printf 'Show all available shells in your system\n' 
    cat /etc/shells;;
    8 )
    printf 'Hard disk information\n'
    df -H;;
    9 )
    printf 'CPU information\n'
    sysctl -n machdep.cpu.brand_string;;
    10 )
    printf 'Memory information\n'
    vm_stat;;
    11 )
    printf 'File system information\n'
    printf 'enter file name'
    read a
    stat $a;;
    12 )
    printf 'Currently running process\n'
    ps u;;
    * )
    printf 'wrong option entered\n';;
esac