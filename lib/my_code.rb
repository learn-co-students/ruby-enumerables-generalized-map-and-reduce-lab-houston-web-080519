# Your Code Here

exampleArray = [1, 2, 4,-9]

# def map(source_array) 
#   new = []
#   i = 0
#   while i < source_array.length 
#   yield
#     new.push( source_array[i] )
#     i += 1
#   end
#   return new
# end 

def my_own_map(array)
    ary = array
    ary.each do |elem|
      ary << yield(elem)
    end
    ary
  end



my_own_map(exampleArray) { |n| n * 1 }

my_own_map(exampleArray) { |n| n * 2 }

my_own_map(exampleArray) { |n| n * -1 }
