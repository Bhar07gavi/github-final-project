#!/bin/bash
 
# simple-interest.sh
# A simple bash script to calculate simple interest based on user input.
# Required input fields: principal, rate of interest, time period
# Formula: Simple Interest = (Principal * Rate * Time) / 100
 
echo "===== Simple Interest Calculator ====="
 
# Input field: principal amount
read -p "Enter the principal amount (Principal): " principal
 
# Input field: rate of interest
read -p "Enter the rate of interest (Rate, in %): " rate
 
# Input field: time period
read -p "Enter the time period (Time, in years): " time
 
# Calculate simple interest using awk for floating point support
# Simple Interest = (Principal * Rate * Time) / 100
simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')
 
echo "---------------------------------------"
echo "Principal Amount   : $principal"
echo "Rate of Interest   : $rate%"
echo "Time Period        : $time year(s)"
echo "Simple Interest     : $simple_interest"
echo "---------------------------------------"
 
