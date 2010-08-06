require 'rubygems'
require 'nokogiri'
require 'open-uri'

class TrackingCheck

	def init
		puts "eBay Link Tracker Check"
		@untracked_links = []
		@tracked_links = []
		getLinks
	end
	
	def getLinks
    doc = Nokogiri::HTML(open('new_ebay.html'))
    doc.css('body a').each do |link|
      if link['href'] =~ /trksid/
        @tracked_links << link
      else
        @untracked_links << link
      end
    end
    showUntrackedLinks
    showTrackedLinks
	end
		
	def showUntrackedLinks
	  puts "================="
	  
	  puts "number of untracked links: #{@untracked_links.size}"
	  puts "================="
	  @untracked_links.each do |link|
	    puts link.content
	  end
	end
	
	def showTrackedLinks
	  puts "================="
	  
    puts "number of tracked links: #{@tracked_links.size}"
	  puts "================="
	  @tracked_links.each do |link|
	    puts link.content
	  end
	end

end

TrackingCheck.new.init
