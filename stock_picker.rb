def stock_picker (data=[])
	max_profit = 0
	buy_day = 0
	sell_day = 0

	data.each do |x|
		i = data.index(x)
		while i < data.length-1
			i += 1
			profit = data[i] - x
			if profit > max_profit
				max_profit = profit
				buy_day = data.index(x)
				sell_day = i
			end
		end
	end

	best_profit = [buy_day, sell_day]
	return best_profit
end

puts stock_picker([17,3,6,9,15,8,6,1,10]).inspect


	
