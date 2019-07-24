def map(source_array)
  i = 0
  array2 = []
  while i < source_array.length do 
    array2.push(yield(source_array[i]))
    i += 1
  end
  array2
end

def reduce(source_array, start = nil)
  if start
    total = start
    i = 0
  else
    total = source_array[0]
    i = 1
  end
  while i < source_array.length do 
    total = yield(total, source_array[i])
    i += 1
  end
  total
end

#reduce(source_array){|memo, n| memo && n}

