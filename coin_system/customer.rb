class Customer
  attr_reader :denoms, :coins
  
  def initialize(denoms, *coins)
    @coins = coins.sort
    @denoms = denoms.sort
    
    coins.each{|denom| check_denom(denom)}
    
    @cm = ChangeMaker.new(*@denoms)
    check_optimal_start
  end
  
end