def generator(n)
    array = Array.new
    (0...n).each { |x|
        array.push block_given? ? (yield x) : x
    }
    array
end
 a = generator(5){|x|
    x*x
 }

 def generate(n,proc)
    array = Array.new
    (0...n).each { |x|
        array.push proc.nil? ? x : proc.call(x)
    }
    array
end

pr = Proc.new{ |x|
    x*x
}

b = generate(5,pr)
puts b

def func(arg)
    return proc{|x| x*arg}
end

a = func(5);
puts a.call(4)
