#!/bin/bash

#skript abiks bussi ekskursioonide korraldajale

echo -n "Mitu reisijat on grupis?:"
read reisijad

echo -n "Mitu kohta on bussis?:"
read kohad

bussi=$(expr $reisijad / $kohad)

if [ $kohad -gt $reisijad ]; then
 jaak=$(expr $kohad - $reisijad) 
 echo "Täielikult on täidetud $bussi bussi ja üle jääb $jaak kohta."
else
 maha=$(expr $reisijad % $kohad)
 echo "Täielikult on täidetud $bussi bussi ja maha jääb $maha inimest."
 if [ $maha != 0 ]; then
  echo "Kokku oleks vaja $(expr $bussi + 1) bussi, et keegi maha ei jääks."
 fi
fi
#skripti lõpp
