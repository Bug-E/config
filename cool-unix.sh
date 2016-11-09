grep --color='auto' -P -n "[\x80-\xFF]" file_name # finds out all non ascii characters
awk '{print NF}'

##  convert the output from mysql to csv
awk -F\| -v OFS=',' 'gsub(/ /, "", $2);gsub(/ /, "", $3);gsub(/ /, "", $4); { print $2,$3,$4}'

## Update the currently editing file in vim with sudo credentials
:w ! sudo tee %
