#!/bin/sh
#this script is a wrapper for an R script, and as input takes a text file, and for each line, parses the line as necessary, and runs the R script

inputfile=$1
parameter1=$2
parameter2=$3

while read line
do
    echo "now running R script for $line"
    Rscript /path/to/script.R $line $parameter1 $parameter2 2>> $inputfile.$line.output.txt

done<$inputfile