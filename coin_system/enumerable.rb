module Enumerable
  def min_by
    pairs = map{|x| [yield(x), x]}
    min_pairs = pairs.min{|a,b| a.first <=> b.first}
    return min_pairs.last
  end
end