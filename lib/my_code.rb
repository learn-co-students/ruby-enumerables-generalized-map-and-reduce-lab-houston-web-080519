# Your Code Here
def map_to_negative(source_array)
  source_array.map {|n| n * -1}
end

def map_no_change(source_array)
  source_array.map {|n| n * 1}
end

def map_double(source_array)
  source_array.map {|n| n * 2 }
end

def map_squared(source_array)
  source_array.map {|n| n ** 2}
end

def reduce_total(source_array, starting_point = nil)
  if starting_point == nil
    source_array.reduce(0) {|num, sum| num + sum}
  else
    source_array.reduce(starting_point) {|num, sum| num + sum}
  end
end

def reduce_all_true(source_array)
  source_array.reduce(true) {|a, b| a && b}
end

def reduce_any_true(source_array)
  source_array.reduce(:|)
end