#!/bin/bash

MOVIES=("Court" "HIT3" "PUSHPA2" "Thandel") # size 4 and array index start from 0 $ this var 

echo "First Movie: ${MOVIES[0]}"
echo "First Movie: ${MOVIES[3]}"
echo "First Movie: ${MOVIES[4]}"

echo "All movies: ${MOVIES[@]}" #@ means all variable passed script