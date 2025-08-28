# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
#
#   > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12
# Quick Tips:
#
# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.
#


def stock_picker(stock_prices)
  gains = 0
  best_days = []
  stock_prices.each_with_index do |buy_price, buy_day|
    ((buy_day + 1)..(stock_prices.length - 1)).each do |sell_day|
      sell_price = stock_prices[sell_day]
      price_diff = sell_price - buy_price
      gains, best_days = price_diff, [buy_day, sell_day] if price_diff > gains
    end
  end
  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
