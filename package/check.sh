#!/bin/bash
# Program:
#	Check Folder $1 with R

mkdir check
cp -r $1 check
cd check
R CMD check --no-codoc --no-examples --no-manual --no-vignettes --no-rebuild-vignettes --check-subdirs=no $1
cd ..

read -p "Do you want to check the compile log? (Y/N): " yn
[ "$yn" == "Y" -o "$yn" == "y" ] && echo -e "\033[38;5;148m=== Compile Log ===\033[39m" && cat check/$1.Rcheck/00install.out && echo -e "\033[38;5;148m===\033[39m" && exit 0
[ "$yn" == "N" -o "$yn" == "n" ] && echo "Oh, interrupt!" && exit 0
exit 1
