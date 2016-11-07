#!/bin/bash
#Reavahe asemel @
#selleks, et saaks kõrvuti olevaid sõnu vaadata.
#Vaatame, et kõrvuti oleksid nimisõna ja kaassõna ning märgistame rea ära.
#Võtame märgistatud read välja.
#Võtame käändsõna kohta välja käände lühendi.
#Kuna muidu läheks käsk väga lohisevaks, asendasin enne sg ja pl-i @ märgiga.
#Kustutame kaassõna kohta ebavajaliku ära.
#Teeme sagedustabeli.

tr '\n' '@' |\
sed 's/\(@[^@]*_S_[^@]*\)@\([^@]*_K_[^@]*@\)/\1#\2/g' |\
tr '@' '\n' |\
grep '#' |\
sed 's/\( sg \| pl \)/@/g' |\
sed 's/.*@\([^,]*\),/\1/g' |\
sed 's/\/\/#\([^ ]*\).*/\1/g' |\
sort | uniq -c | sort -nr


