#/bin/bash/

printf "Enter the website name: "
read website
IP=$(dig +short ${website}.com)
echo "the website is ${website}.com"
echo "the IP address is $IP"
response=$(curl http://ip-api.com/json/$IP -s)
country=$(echo $response | jq '.country' -r)
echo "the country is $country"
city=$(echo $response | jq '.city' -r)
echo "the city is $city"
zip=$(echo $response | jq '.zip' -r)
echo "the zip code is $zip"
lat=$(echo $response | jq '.lat' -r)
echo "the latitude is $lat"
lon=$(echo $response | jq '.lon' -r)
echo "the longitude is $lon"
