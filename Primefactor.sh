#Extend the Prime Factorization Program to store all the Prime Factors of a

number n into an array and finally display the output.
#!/bin/bash

# Generate 10 random 3-digit numbers
numbers=()
for ((i=0; i<10; i++)); do
  numbers[$i]=$((RANDOM%900+100))
done

# Sort the array
IFS=$'\n' sorted=($(sort <<<"${numbers[*]}"))
unset IFS

# Find the 2nd largest and 2nd smallest elements
max1=${sorted[-1]}
max2=${sorted[-2]}
min1=${sorted[0]}
min2=${sorted[1]}

echo "Random Numbers: ${numbers[@]}"
echo "Sorted Numbers: ${sorted[@]}"
echo "Second Largest: $max2"
echo "Second Smallest: $min2"
