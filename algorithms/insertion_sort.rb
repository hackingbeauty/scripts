class InsertionSort

  def sort(array)
    for j in 1..(array.length - 1)
      key = array[j]
      i = j - 1
      while i >= 0 and array[i] > key 
              array[i+1] = array[i]
              i = i - 1
      end
      array[i+1] = key
    end     
    return array
  end
  
end

numbers = [77,23,34,46,87,12,1,66,3,99,1000000,2,57]

puts InsertionSort.new.sort(numbers)
