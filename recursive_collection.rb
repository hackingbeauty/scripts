class RecursiveDollarCollection
	
	def initialize(amt)
		puts collect(amt)
	end

	def collect(amt)
    if amt == 1
      return amt
    else
      collect(amt/10) * amt/10
    end
	end

end

RecursiveDollarCollection.new(1000)
