#!/bin/bash

# 1. Use clear, descriptive variable names (no "x", "y", "temp")
ITEM_PRICE=250
TAX_RATE=0.18        # 18%
DISCOUNT_PERCENT=10  # 10%

# 2. Break the calculation into meaningful steps
DISCOUNT_AMOUNT=$(echo "$ITEM_PRICE * $DISCOUNT_PERCENT / 100" | bc -l)
DISCOUNTED_PRICE=$(echo "$ITEM_PRICE - $DISCOUNT_AMOUNT" | bc -l)
TAX_AMOUNT=$(echo "$DISCOUNTED_PRICE * $TAX_RATE" | bc -l)
FINAL_TOTAL=$(echo "$DISCOUNTED_PRICE + $TAX_AMOUNT" | bc -l)

# 3. Print with clear labels (good for debugging)
echo "Item price: ₹${ITEM_PRICE}"
echo "Discount: ₹$(printf "%.2f" $DISCOUNT_AMOUNT)"
echo "After discount: ₹$(printf "%.2f" $DISCOUNTED_PRICE)"
echo "Tax: ₹$(printf "%.2f" $TAX_AMOUNT)"
echo "Final total: ₹$(printf "%.2f" $FINAL_TOTAL)"
