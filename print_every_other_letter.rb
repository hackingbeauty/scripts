class Nulu
  def initialize
    every_other_letter
  end
  def every_other_letter
    alphabet = ['a','b','c','d','e','f','g']
    alphabet.each_with_index do |letter, index|
      if(index%2 !=0)
        puts letter
      end
    end
  end
end

Nulu.new
