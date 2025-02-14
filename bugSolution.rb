```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value || 0 # Returns 0 if @value is nil, otherwise returns @value
  end
end

my_object = MyClass.new(10)
puts my_object.value # => 10

my_object.instance_variable_set(:@value, 20)
puts my_object.value # => 20

my_object.instance_variable_set(:@value, nil)
puts my_object.value # => 0
```