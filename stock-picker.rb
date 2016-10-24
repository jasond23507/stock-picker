def stock_picker(prices) 
	buy_value = prices.min 
	buy_day = prices.find_index(buy_value)
	sell_value = prices.max 
	sell_day = prices.find_index(sell_value)
	profit = sell_value - buy_value
	days = {0 => "Monday", 1 => "Tuesday", 2 => "Wednesday", 3 => "Thursday",
		4 => "Friday", 5 => "Sataurday", 6 => "Sunday"}
	puts "Best Buy Day: #{days[buy_day]} at $#{buy_value} a share"
	puts "Best Sell Day: #{days[sell_day]} at $#{sell_value} a share"
	puts "Profit: $#{profit}"
end

stocks = [10,7,9,44,13,1,6]
stock_picker(stocks)