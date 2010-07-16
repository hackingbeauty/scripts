require "open-uri"

class DowJonesIndustrialAverage
  
  def init
    loop do
      # actual text on Google Finance:
      # <span class="chr" id="ref_983582_c">-261.41</span> 
      puts(open("http://finance.google.com/finance?cid=983582").read[
        /<span class="\w+" id="ref_983582_c">([+-]?\d+\.\d+)/m,1])
      sleep(30)
    end
  end
  
end

DowJonesIndustrialAverage.new.init