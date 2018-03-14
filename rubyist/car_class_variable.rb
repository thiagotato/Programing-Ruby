class Car
  @@makes = []
  @@cars = {}
  @@total_count = 0
  attr_reader :make

  def self.total_count
    @@total_count
  end

  def self.cars
    @@cars
  end

  def self.add_make(make)
    unless @@makes.include?(make)
      @@makes << make
      @@cars[make] = 0
    end
  end

  def initialize(make)
    if @@makes.include?(make)
      puts "Creating a new #{make}!"
      @make = make
      @@cars[make] += 1
      @@total_count += 1
    else
      raise "No such make: #{make}."
    end
  end

  def make_mates
    @@cars[self.make]
  end
end

Car.add_make("Honda")
Car.add_make("Ford")
Car.add_make("Brand X")
h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")
x = Car.new("Brand X")

puts "Counting total cars..."
puts "There are #{Car.total_count}."
puts Car.cars

