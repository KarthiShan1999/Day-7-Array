#!/bin/bash

# Generate 10 random 3-digit numbers
numbers=()
for ((i=0; i<10; i++)); do
  numbers[$i]=$((RANDOM%900+100))
done

# Find the 2nd largest and 2nd smallest elements
max1=0
max2=0
min1=1000
min2=1000

for num in "${numbers[@]}"; do
    if [[ $num -gt $max1 ]]; then
        max2=$max1
        max1=$num
    elif [[ $num -gt $max2 && $num -lt $max1 ]]; then
        max2=$num
    fi
    if [[ $num -lt $min1 ]]; then
        min2=$min1
        min1=$num
    elif [[ $num -lt $min2 && $num -gt $min1 ]]; then
        min2=$num
    fi
done

echo "Random Numbers: ${numbers[@]}"
echo "Second Largest: $max2"
echo "Second Smallest: $min2"
