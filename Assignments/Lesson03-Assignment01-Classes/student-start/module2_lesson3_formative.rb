class Person
  #have a first_name and last_name attribute with public accessors
  attr_accessor :first_name, :last_name

  #have a class attribute called `people` that holds an array of objects
  @@people = []

  #have an `initialize` method to initialize each instance
  def initialize(first_name,last_name)#should take 2 parameters for first_name and last_name

    @first_name = first_name
    @last_name = last_name
    @@people.push(self)
  end

  def self.search(last_name)
    @@people.select {|person| person.last_name == last_name}
  end

  def to_s
    "#{self.first_name}, #{self.last_name}"
  end
end

p1 = Person.new("John", "Smith")
p2 = Person.new("John", "Doe")
p3 = Person.new("Jane", "Smith")
p4 = Person.new("Cool", "Dude")

puts Person.search("Smith")

# Should print out
# => John Smith
# => Jane Smith
