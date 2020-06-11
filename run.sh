#!/bin/bash
if ! [ -r $1 ]; then
	echo "nem olvashato a fájl"
	exit 111
fi

echo Kérek egy karaktert:
read kar

echo $2 > log.txt
cat $1 | tr -cd $2 | wc -c >> log.txt


if ! [  `echo -n $kar | wc -m` == 1 ]; then
        echo túl sok karakter ezért használatban a : lesz
        kar=":"
fi
cat $1 | tr  $2 $kar >  modded.log
