module Homor
    def tick
        "tick!"
    end
end

class A
    def initialize(arg)
        @arg = arg
    end
    def to_s
        "#{@arg}"
    end
end
a = A.new("abc")
a.extend Homor
puts a
puts a.tick
