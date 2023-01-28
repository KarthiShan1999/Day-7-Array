#!/bin/bash

money=100
goal=200
wins=0
bets=0

while [[ $money -gt 0 && $money -lt $goal ]]; do
  bet=$((RANDOM % 2))
  bets=$((bets+1))

  if [[ $bet -eq 1 ]]; then
    money=$((money+1))
    wins=$((wins+1))
  else
    money=$((money-1))
  fi
done

if [[ $money -eq $goal ]]; then
  echo "Congratulations! You reached your goal of Rs $goal with $wins wins and $bets bets."
else
  echo "Sorry, you are broke. You made $bets bets and won $wins times."
fi
