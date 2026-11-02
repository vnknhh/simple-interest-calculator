# Simple Interest Calculator

A simple interest calculator that computes the interest earned or owed on a principal amount over a period of time, at a fixed annual rate.

## Formula

```
Simple Interest (SI) = (P × R × T) / 100
Total Amount (A)     = P + SI
```

| Symbol | Meaning |
|--------|---------|
| P | Principal amount (the initial sum of money) |
| R | Annual interest rate, in percent (%) |
| T | Time period, in years |
| SI | Simple interest earned |
| A | Total amount after interest |

## Inputs

1. **Principal (P):** a positive number, e.g. `10000`
2. **Rate (R):** annual rate in percent, e.g. `5`
3. **Time (T):** number of years, e.g. `3`

## Outputs

- Simple interest (SI)
- Total amount (A = P + SI)

## Example

| Principal | Rate | Time | Simple Interest | Total Amount |
|-----------|------|------|-----------------|--------------|
| 10,000 | 5% | 3 years | 1,500 | 11,500 |

Calculation: `SI = (10000 × 5 × 3) / 100 = 1500`

## How It Works

1. The user enters the principal, the annual rate and the time in years.
2. The calculator validates that all values are positive numbers.
3. It applies the formula `SI = (P × R × T) / 100`.
4. It displays the interest and the total amount.

## Example Code (Python)

```python
def simple_interest(principal, rate, time):
    return (principal * rate * time) / 100

p = float(input("Principal: "))
r = float(input("Annual rate (%): "))
t = float(input("Time (years): "))

si = simple_interest(p, r, t)
print(f"Simple interest: {si:.2f}")
print(f"Total amount: {p + si:.2f}")
```

## Notes

- Simple interest is calculated only on the original principal, unlike compound interest.
- The time period must be in years. Convert months by dividing by 12.

## Author

Trần Vân Khánh
