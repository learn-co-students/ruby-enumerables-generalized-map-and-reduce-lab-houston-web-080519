# Your Code Here
def map(array)
  counter = 0
  new_array = []
  while counter < array.length do 
   new_array.push(yield(array[counter]))
    counter += 1
  end 
  return new_array
end  


def reduce(array, start = nil )
   
  if start 
    counter = 0 
    total = start
  else 
    total = array[0]
    counter = 1 
  end 
  while counter < array.length 
     total = yield(total, array[counter])
    counter += 1 
  end
  return total 
end  