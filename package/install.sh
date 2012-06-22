#!/bin/bash
# Program:
#	Check Folder $1 with R
rm -rf install
mkdir install
cp -r $1 install
cd install
R CMD INSTALL $1
cd ..

