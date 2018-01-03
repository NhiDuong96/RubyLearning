add = lambda{|a,b| a+b}
puts add.call(2,3)

def Cal(a, b, &operation)
    operation.call(a,b)
end

add = lambda{|a,b| a+b}
sub = lambda{|a,b| a-b}
div = proc{|a,b| a/b}
puts Cal(3,4,&add)
puts Cal(3,4,&div)
puts Cal(3,4){|a,b| a*b}
