class FizzBuzz
  
  def init
    100.times do |x|
      x += 1
      if(x%3 == 0)
        puts "Fizz: #{x} is a multiple of 3"
      end
      if(x%5 == 0)
        puts "Buzz: #{x} is a multiple of 5"
      end
      if((x%3 == 0) && (x%5 == 0))
        puts "FizzBuzz: #{x} is a multiple of both 3 and 5"
      end
    end
  end
  
end

FizzBuzz.new.init