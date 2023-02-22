def stock_picker(prices)
    buy = prices[0]
    sell = prices[0]

    best_buy = prices[0] # 17
    best_sell = prices[0] # 17
    diff = best_buy - best_sell # 0

    buy_index = 0
    sell_index = 0


    prices.each_index do |i|
        prices.each_index do |j|

            # Edge case: Cannot buy on last day
            if i == prices.length-1
                break
            end

            # Edge case: Cannot sell on first day
            if j == 0
                sell = prices[j]
                next
            end

            # Sell only after buy
            if j <= i 
                next
            end

            # Update Buy and Sell
            buy = prices[i]
            sell = prices[j]

            if (buy - prices[j-1]) > (buy - sell)
                sell = prices[j-1]
            end

            if (buy - sell) > diff
                best_buy = buy
                best_sell = sell
                diff = best_buy - best_sell
                buy_index = i
                sell_index = j
            end
        end
    end
    

    return [buy_index, sell_index]

end

print stock_picker([17,3,6,9,15,8,6,1,10])