def money(change)

	coins_value = {:quarter => 25, :dime => 10, :nickel => 5, :penny => 1}
	exact_change = {:penny => 0, :nickel => 0, :dime => 0, :quarter => 0}

	coins_value.each do |coin, value|
		while 
			value <= change
			exact_change[coin] += 1
			change -= value
		end
	end
	exact_change
end