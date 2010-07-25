class InsertionSort

  def sort(num)
    puts num.length-1
    for j in 1..(num.length - 1)
      key = num[j] #12
      i = j - 1 #i = 3
      while i >= 0 and num[i] > key #
              num[i+1] = num[i]
              i = i - 1
      end
      num[i+1] = key
    end     
    puts num
  end
  
end

numbers = [23,34,46,87,12,1,66,3,99,1000000,2,57]

InsertionSort.new.sort(numbers)
