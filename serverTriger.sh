#!/bin/bash
N1=$(shuf -i 1-1000 -n 1)
N2=$(shuf -i 1-1000 -n 1)
ans=$(shuf -i 1-4 -n 1)

if [ "$ans" -eq 1 ]
then
  operation="+"
elif [ "$ans" -eq 2 ]
then
  operation="\-"
elif [ "$ans" -eq 3 ]
then
  operation="\*"
else
  operation="/"
fi
expect runScriptOnServer.exp $N1 $N2 "$operation"
