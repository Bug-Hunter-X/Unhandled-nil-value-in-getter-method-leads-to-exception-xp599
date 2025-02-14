```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value # => 10

my_object.instance_variable_set(:@value, 20)
puts my_object.value # => 20

#This will raise an exception, as the method value does not handle nil values
my_object.instance_variable_set(:@value, nil)
puts my_object.value
```