### **📈 Stock Picker**

[](https://www.ruby-lang.org/en/documentation/)

This is a simple Ruby function that analyzes a list of daily stock prices and finds the most profitable pair of days to buy and sell.

-----

### **How to Use**

The `stock_picker` method takes one argument: an array of stock prices, where each price corresponds to a hypothetical day.

Just call the function with your list of prices. It will return an array containing the buy day's index and the sell day's index.

```ruby
# The days are represented by their index, starting at 0.
stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

# Call the function to find the best trading days
best_days = stock_picker(stock_prices)

# The result is the pair of indices for the best buy and sell days
p best_days
# Expected output: [1, 4]
```

-----

### **How It Works**

The function uses a **nested loop** to compare every possible buy day with every possible sell day that occurs after it. It keeps track of the **maximum profit** found so far and the corresponding `[buy_day, sell_day]` pair.

The core logic is to calculate the profit for each possible transaction and, if that profit is greater than the current maximum, to update the record. This ensures that the optimal trading days are found, even if they don't involve the absolute lowest or highest price in the entire dataset.

-----

### **License**

This project is [MIT licensed](https://www.google.com/search?q=https://github.com/git/git-scm.com/blob/main/MIT-LICENSE.txt). Feel free to use and modify it as you see fit.
