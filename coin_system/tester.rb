require 'prices'

price_list = IO.readlines("prices.txt").map{|price| price.to_i} 
prices = Prices.new(*price_list)
prices.each(4) {|price| price_list.push price}
puts "prices array = #{prices.get_final_prices}"