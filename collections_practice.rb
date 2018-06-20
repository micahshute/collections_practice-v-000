
def sort_array_asc(arr)
  arr.sort
end

def sort_array_desc(arr)
  arr.sort{|a,b| (-1 * (a<=>b))}
end

def sort_array_char_count(arr)
  arr.sort{|a,b| a.length <=> b.length}
end

def swap_elements_with_index(arr, from, to)
  temp = arr[from]
  arr[from] = arr[to]
  arr[to] = temp
  arr
end

def swap_elements(arr)
  swap_elements_with_index(arr, 1,2)
end

def reverse_array(arr)
  new_arr = []
  i = arr.length - 1
  while i >= 0
    new_arr << arr[i]
    i -= 1
  end
  new_arr
end

def kesha_maker(arr)
  arr.map do |word|
    word[2] = '$'
    word
  end
end

def find_a(arr)
  arr.select{|word| word[0] == 'a'}
end

def sum_array(arr)
  arr.reduce{|sum,num| sum + num}
end

def add_s(arr)
  arr.map.with_index{|item, index| index == 1 ? item : item + 's'}
end
