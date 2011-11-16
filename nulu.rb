class Nulu
    def initialize
      every_other_letter
    end 
    def every_other_letter
      alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m']
      alphabet.each_with_index do |letter, index|
        if(index%2 == 0)
          File.open('every_other_letter.txt', 'a'){ |f| f.write(letter) }
        end 
      end 
    end 
end

Nulu.new
