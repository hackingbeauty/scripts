class Prices
  def initialize(*data)
    @data = data
    @final_prices = []
  end
  
  def get_final_prices
    @final_prices
  end
  
  def get
    @final_prices.push @data[rand(@data.size)]
    @data[rand(@data.size)]
  end
  
  def each(count)
    count.times{ yield get}
  end
end