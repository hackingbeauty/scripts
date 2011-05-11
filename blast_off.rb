class BlastOff
  def initialize(count)
    countdown(count)
  end
  
  def countdown(count)
    if count == 1
      puts "counting #{count}"
      return
    else
      puts "counting #{count}"
      countdown(count-1)
    end
    
  end
  
end

BlastOff.new(ARGV[0].to_i)