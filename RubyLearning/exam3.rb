class Presenter
  attr_accessor :object

  def initialize(object)
    self.object = object
  end

  # If a method we call is missing, pass the call onto
  # the object we delegate to.
  def method_missing(m, *args, &block)
    puts "Delegating #{m}"
    object.send(m, *args, &block)
  end
end

class UserPresenter < Presenter

  # We just want to display the first letter of the last name
  def last_name
    "#{object.last_name}"
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end

# A mini User object to work with
User = Struct.new(:first_name, :last_name, :age)
user = User.new("Leigh", "Halliday", 30)
user_presenter = UserPresenter.new(user)

puts user_presenter.full_name
puts user_presenter.age
