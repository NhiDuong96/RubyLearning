class Dummy
    def method_missing(m,*args,&block)
        puts "No method #{m}"
    end
end
d = Dummy.new.anything()

class MethodCall
  def initialize(sym, args)
    @sym = sym
    @args = args
  end

  def sym
    @sym
  end

  def args
    @args
  end

  def ==(other_call)
    @sym == other_call.sym && @args == other_call.args
  end
end

class Spy
  def initialize
    @method_calls = []
  end

  def method_missing(sym, *args, &block)
    @method_calls << MethodCall.new(sym, args)
    puts "what is it?"
  end

  def method_called?(sym, *args)
    @method_calls.include?(MethodCall.new(sym, args))
  end
end

s = Spy.new
s.what(3)
puts s.method_called?(3)

