def filter(array, block)
  array.select(&block)
end

array = [1,2,-4,2,-6,0]
positive_integer = lambda{|x| x > 0}
puts "#{filter(array,positive_integer)}"

Filter = lambda do |array,block|
  array.select(&block)
end

puts Filter.call(array,positive_integer)
