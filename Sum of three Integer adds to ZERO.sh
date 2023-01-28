#Write a Program to show Sum of three Integer adds to ZERO
#!/bin/bash

arr=(-1 0 1 2 -1 -4)

echo "All unique triplets that add up to zero:"
for ((i=0; i<${#arr[@]}-2; i++)); do
  for ((j=i+1; j<${#arr[@]}-1; j++)); do
    for ((k=j+1; k<${#arr[@]}; k++)); do
      if [[ ${arr[i]} + ${arr[j]} + ${arr[k]} -eq 0 ]]; then
        echo "${arr[i]}, ${arr[j]}, ${arr[k]}"
      fi
    done
  done
done
