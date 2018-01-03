class Singleton
    private_class_method :new
    @@obj = nil
    def Singleton.instance
        @@obj = new unless @@obj
        @@obj
    end
    def call
        puts "call singleton!"
    end
end

a = Singleton.new
puts a.call
