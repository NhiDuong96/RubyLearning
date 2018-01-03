a = [1,2,3]
puts a.inject(0) { |mem, var|  mem+=var}

class Integer
    def do(action,arg = nil)
        if arg.nil? or not arg.kind_of?(Integer)
            return self
        else
            case action
            when "+"
                return self + arg
            when "-"
                return self - arg
            end
        end
        raise NoMethodError.new(action)
    end
end

class Array
    def foldl(method)
        inject{ |result,i| result ? result.send(method,i) : i }
    end
end

puts [1,2,3].foldl("-")
#puts ['n','h','i'].foldl(:concat)

def relay(array,type)
    array.map { |e| e.send("to_#{type}") }
end
a = [1,2,3]

puts relay(a,'s').inspect



