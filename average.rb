def average(collection)
	sum = 0
	collection.each do |c|
		puts sum = sum +  c
	end
	puts "average is #{sum/collection.size}"
end

grades = [95,89,91,85,97,100]
average(grades)
