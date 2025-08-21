#!/usr/bin/env bash
# simple-interest.sh — compute simple interest
# Usage: ./simple-interest.sh <principal> <rate_percent> <time_years>
# Example: ./simple-interest.sh 1000 5 2

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <principal> <rate_percent> <time_years>"
  exit 1
fi

p=$1
r=$2
t=$3

# Calculate simple interest (requires bc)
si=$(echo "scale=2; $p * $r * $t / 100" | bc -l)

echo "Simple Interest = $si"
