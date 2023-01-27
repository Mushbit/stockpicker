def stock_picker(stock_prices)
    best_days = []
    difference = 0

    i = 0
    while i < stock_prices.length - 1

        b = i
        while b < stock_prices.length - 1

            if (stock_prices[i].to_i - stock_prices[b].to_i) < difference
                difference = (stock_prices[i].to_i - stock_prices[b].to_i)
                best_days = [i, b]
            end

            b += 1
        end

        i += 1
    end
end

puts "Enter the price of a stock for each concecutive day of the period
you'd like this program to find the day that was best to buy and then sell on.
If you are done entering your values type: 'run' and press 'enter'."
prices = []
price = gets.chomp
until price == "run" do
    prices.push(price)
    price = gets.chomp
end

stock_picker(prices)

    