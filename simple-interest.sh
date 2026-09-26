#!/bin/bash

# simple-interest.sh
# A simple bash script to calculate simple interest based on user input.
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "===== Simple Interest Calculator ====="

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (in %): " rate
read -p "Enter the time period (in years): " time

# Calculate simple interest using awk for floating point support
simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "---------------------------------------"
echo "Principal Amount   : $principal"
echo "Rate of Interest   : $rate%"
echo "Time Period        : $time year(s)"
echo "Simple Interest     : $simple_interest"
echo "---------------------------------------"
