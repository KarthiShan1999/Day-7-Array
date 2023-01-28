#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77,
etc and store them in an array
#!/bin/bash

repeated_digits=()
for ((i=0; i<=100; i++)); do
  digits=(0 0 0 0 0 0 0 0 0 0)
  num=$i
  while [[ $num -gt 0 ]]; do
    digit=$((num % 10))
    digits[$digit]=$((digits[$digit]+1))
    num=$((num / 10))
  done
  for ((j=0; j<10; j++)); do
    if [[ ${digits[j]} -eq 2 ]]; then
      repeated_digits+=($j)
      break
    fi
  done
done

echo "Repeated digits in the range 0-100: " ${repeated_digits[@]}
