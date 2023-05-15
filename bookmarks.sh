#/bin/bash/

printf 'enter the path of the bookmark file from chrome\n'
read a

cd $a

array_urls=()
array_urls=($(jq '.roots.bookmark_bar.children[].url' bookmarks.json))
# printf '%s\n' "${array_urls[0]}"
touch bookmarks.txt
chmod +w bookmarks.txt
for url in "${array_urls[@]}"; 
do
    printf "%s\n" "$url" >> bookmarks.txt
done
pandoc "bookmarks.txt" -o "bookmarks.md"
rm bookmarks.txt