#!/bin/bash

cd "${0%/*}"

printf "\e[92mZadej označení modulu\n"
printf "\e[0mOznačení může obsahovat pouze malá písmena a-z, žádné speciální znaky!\n\n"
printf '\e[93m\e[1mOznačení\e[0m: '
read -r dirname
printf '\n\n'

printf "\e[92mZadej název modulu\n"
printf "\e[0mZde už můžeš zadat pěkný, čitelný název i s mezery a diakritikou.\n\n"
printf '\e[93m\e[1mCelý název\e[0m: '
read -r modname
printf '\n\n'

printf "\e[92mZadej jméno autora\n"
printf "\e[0mTvoje přezdívka, nebo více autorů odděleno čárkou.\n\n"
printf '\e[93m\e[1mAutor\e[0m: '
read -r author
printf '\e[0m\n\nVytvářím soubory..'

mkdir "./SkimoSE_${dirname}"
cp "./default/meta.xml" "./SkimoSE_${dirname}/meta.xml"
cp "./default/client.lua" "./SkimoSE_${dirname}/client.lua"
cp "./default/server.lua" "./SkimoSE_${dirname}/server.lua"

find "./SkimoSE_${dirname}" -type f -exec sed -i "s/\$NAME/SkimoSE_${dirname}/g" {} \;
find "./SkimoSE_${dirname}" -type f -exec sed -i "s/\$DESC/${modname}/g" {} \;
find "./SkimoSE_${dirname}" -type f -exec sed -i "s/\$AUTHOR/${author}/g" {} \;

printf "\n\e[92mHotovo!\n"
