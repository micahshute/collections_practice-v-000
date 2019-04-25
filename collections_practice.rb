def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    b <=> a
  end
end

def sort_array_char_count(array)
  array.sort { |a, b| a.length <=> b.length}
end

# Swap 2nd and 3rd array elements
def swap_elements(array)
  temp = array[1]
  array[1] = array[2]
  array[2] = temp
  #array[1], array[2] = array[2], array[1]
  array 
end

def reverse_array(array)
  new_array = []
  array.each do |element|
    new_array.unshift(element)
  end
  return new_array
end

def kesha_maker(array)
  array.each do |element|
    element[2] = "$"
  end
  return array
end

def find_a(array)
  array.select do |element|
    element.start_with?("a")
  end
end

def sum_array(array)
  # sum = 0
  # array.each do |number|
  #   sum = number + sum
  # end
  # sum

  # array.sum

  array.reduce do |cumulative, current|
    cumulative + current
  end
end

def add_s
  array.collect.with_index do |element, index|
    # if index == 1
    #   element
    # else
    #   element + "s"
    # end
    index == 1 ? element : element + "s"
  end

end
