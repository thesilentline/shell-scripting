
#/bin/bash/

echo "enter text file"
read file
output=$(awk -F'.' '{print $1}' <<< $file)
pandoc "$file" -o ${output}.pdf
open ${output}.pdf