#!/bin/bash


#This is a script to add a 4-digit psuedorandom number to the beginning of every file in a folder with the given extension. Make sure all files that you want randomized are in the same directory as the script.  USE AT YOUR OWN RISK!
IFS='
'

#This will be the minimum for our random number generator.
FLOOR=10000

echo "Enter the exension of the files you would like to randomize. Example: .avi"

read ext

for file in *$ext; do
   number=$RANDOM
   
while [ "$number" -le $FLOOR ]
do
   number=$RANDOM
   
done 
   newFile=$(echo -e $number$file | sed 's/^.//')
   echo "Saving $file to $newFile"
   sudo mv $file $newFile
done

