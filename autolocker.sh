#!/bin/bash
COUNTER=1
while(true) do
./locker.sh
let COUNTER=COUNTER+1 
done
