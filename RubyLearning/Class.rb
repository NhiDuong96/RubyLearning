# @attri: protected
# @@const: public static const
# method : public/private/protected


# ruby use symbol($,@,@@) before attribute to differ attribute with method
#---> obj.name -> it's method not a attribute
class Song
    # @attr : cannot involke them outside the defination
    #attr_ : convert @attr -> get/set.attr public method
    attr_reader :duration #--public get method
    attr_writer :artist #-- public set= method
    protected :duration # protected get method

    @@count = 0 #public static attr
    def initialize(name,artist,duration)
        @name, @artist, @duration = name,artist,duration
        @@count+=1
    end
    def to_s
        "Song: #{@name}--#{@artist}--#{@duration}"
    end
    # public method
    def pfunc
        puts "supper function"
    end
    def Song.static_func
        puts "static function"
    end

    private
    def private_func
        puts "private function"
    end

    def gt(other)
        @duration > other.duration
    end
end

class Kara < Song
    def initialize(name,artist,duration,lyrics)
        super(name,artist,duration)
        @lyrics = lyrics
    end
    def to_s
        super + "--#{@lyrics}"
    end
    def sfunc
        self.artist = "num"
        @name = "fuck"
    end
    def kara_call
        puts @name
    end
end

kara = Kara.new("crazy","nhi",500,"night")
kara2 = Kara.new("crazy","nhi",500,"night")
kara.duration
puts kara


