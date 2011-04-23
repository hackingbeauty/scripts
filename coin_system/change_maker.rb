class ChangeMaker
  
  def initialize(*coins)
    raise "ChangeMaker must have a coin of denomination 1" unless coins.include?(1)
    @coins = coins.sort
    @cache = {}
  end
  
  def change(amount)
    return @cache[amount] if @cache[amount]
    return [] if amount == 0
    
    possible = @coins.find_all{|coin| coin <= amount}
    
    best = possible.min_by{|coin| change(amount - coin).size}
        
    return @cache[amount] = [best, *change(amount - best)].sort

  end
  
end