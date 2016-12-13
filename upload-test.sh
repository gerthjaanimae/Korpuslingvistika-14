#!/bin/bash
#Kõigepealt iga sõna eraldi reale
#Siis võtame välja nimisõnad
#ning seejärel võtame algusest ja lõpust mittevajaliku välja
sed 's/<sone/\n<sone/g' |\
grep 'liik=\"S\"' |\
sed 's/.*vorm=\"\(sg\|pl\)\.//g' |\
sed 's/\.\"\.*.*//g' |\
sort | uniq -c | sort -nr

