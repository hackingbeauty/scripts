require 'prices'
require 'enumerable'
require 'change_maker'

price_list = IO.readlines("prices.txt").map{|price| price.to_i} 
prices = Prices.new(*price_list)
prices.each(4) {|price| price_list.push price}
puts "prices array = #{prices.get_final_prices}"

puts "start"

cm = ChangeMaker.new(1,5,10,25)
result1 = cm.change(17)

cm2 = ChangeMaker.new(1,7,10)
result2 = cm2.change(14)

puts "RESULT1 IS: #{result1.join(', ')}"
puts "RESULT2 IS: #{result2.join(', ')}"


lowest = [5,-8,3,9].min_by{|num| num.abs}
puts "lowest is #{lowest}"