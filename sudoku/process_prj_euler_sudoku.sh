#!/bin/bash

while IFS= read -r line
do
    [[ $line == Grid* ]] && proc=0 && SUDOKU= && continue
    ((proc+=1))
    if [ $proc -gt 0 ] && [ $proc -lt 9 ]; then
        #echo "Processing $proc"
        #printf -ne '%s' "$line"
        SUDOKU=$SUDOKU$line
    else
        #echo "Processing $proc"
        SUDOKU=$SUDOKU$line
        echo "\"$SUDOKU\"," | tr '0' '.'
    fi
done < $1
