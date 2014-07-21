#!/bin/bash


#This script will delete the first 4 characters from every file with the given extension.  USE AT YOUR OWN RISK!
echo "Enter the exension of the files you would like to deRandomize. Example: .avi"

read ext

for file in *$ext; do
     mv $file $(echo $file | sed -e 's/^....//');
done
