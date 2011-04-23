class RecursiveDollarCollection
	
	def initialize(amt)
		puts collect(amt)
	end

	def collect(amt)
    if amt == 1
      1
    else
      collect(amt/10) * 10
    end
	end

end

RecursiveDollarCollection.new(ARGV[0].to_i)
