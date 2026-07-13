#!/bin/bash
# simple-interest.sh
# A simple calculator to compute Simple Interest based on user input.
# Formula: SI = (Principal * Rate * Time) / 100

echo "=== Simple Interest Calculator ==="

# Prompt for principal amount
read -p "Enter the principal amount: " principal

# Prompt for rate of interest
read -p "Enter the rate of interest (in %): " rate

# Prompt for time period
read -p "Enter the time period (in years): " time

# Calculate simple interest using bc for decimal support
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "-----------------------------------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time years"
echo "Simple Interest  : $simple_interest"
echo "-----------------------------------"
