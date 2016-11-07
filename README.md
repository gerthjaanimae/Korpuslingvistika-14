# Korpuslingvistika-14

Antud kodutöö eesmärk on leida etteantud tekstist sagedusloend kaassõnadest ja nendele eelneva nimisõna käänetest.
Väljundiks on seega sagedustabel, mis sisaldab sagedust, nimisõna käänet ning kaassõna.

Näiteks 25 p mööda.

Skripti sisendiks peab olema morfoloogiliselt märgendatud tekst.

Skripti jooksutamine käib käsuga: ./Gerth14.sh < sisendfail

Skript toimib järgmiselt:
Kõigepealt tõstetakse kõik ühele reale, et saaks vaadata kõrvuti olevaid sõnu.
Seejärel märgistatakse ära osa reast, kus nimisõna ja kaassõna on kõrvuti.
Pärast seda tõstetakse sõnad eraldi ridadele, väljaarvatud märgistatud sõnapaarid. Seejärel võetakse välja märgistatud read ning eemaldatakse mittevajalik info. Lõpuks luuakse sagedustabel.
