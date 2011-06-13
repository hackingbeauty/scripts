require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Seinfeld
  
  def scrape
    doc = Nokogiri::HTML(
      open('http://jerryseinfeld.com/')
    )
    doc.css('#today a').each do|l|
      puts l.content
    end
  end
  
end

Seinfeld.new.scrape