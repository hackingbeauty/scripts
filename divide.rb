class Divide
	def initialize(x,y)
	  if y == 0 || x == 0
	    puts "Error"
	    return
	  end
		divide(x,y)
	end

	def divide(x,y)
    val = x;
    count = 0;
    while true do
      val = val - y
      count += 1
      if(val < y)
        valType = false
        puts "Quotient: #{count}, Remainder: #{val}"
        return
      elsif(val == 0)
        valType = false
        puts "Quotient: #{count}, Remainder: 0"
        return
      end
    end
	end

end

Divide.new(ARGV[0].to_i, ARGV[1].to_i)
