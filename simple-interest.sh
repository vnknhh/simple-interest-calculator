#!/bin/bash
# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

echo "=== Simple Interest Calculator ==="

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (% per year): " rate
read -p "Enter the time period (in years): " time

# Validate that all inputs are positive numbers
for value in "$principal" "$rate" "$time"; do
  if ! [[ "$value" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: please enter positive numbers only."
    exit 1
  fi
done

interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "Principal:        $principal"
echo "Rate of interest: $rate %"
echo "Time period:      $time years"
echo "Simple interest:  $interest"
echo "Total amount:     $total"
