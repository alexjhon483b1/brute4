#!/bin/bash

counter=165300

while [ $counter -le 165800 ]
do
req=$(./get)
echo "$req" >> result.html
x=$(echo "$req" | grep -oP 'Set-Cookie: \K[^;]+')
echo "$x"
y=$(python3 result.py | grep -oP -m 1 '\b[0-9]+\s*\+\s*[0-9]+\b')
rm result.html
v=$(./resolve.sh "$y")


curl -X POST   http://www.educationboardresults.gov.bd/result.php   -H 'Host: www.educationboardresults.gov.bd'   -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:100.0) Gecko/20100101 Firefox/100.0'  -H "Cookie: $x"   -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' -d "sr=3&et=3&exam=hsc&year=2022&board=dhaka&roll="$counter"&reg=1710527095&value_s=$v&button2=Submit" -v


    ((counter++))
done
