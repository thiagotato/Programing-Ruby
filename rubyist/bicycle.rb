class Bicycle
  attr_reader :gears, :wheels, :seats
  def initialize(gears = 1)
    @wheels = 2
    @seats = 1
    @gears = gears
  end

  def show_msg
    puts @seats
  end
end

class Tandem < Bicycle
  def initialize(gears)
    super
    @seats = 2
  end
end

a = Tandem.new(1)
b = Bicycle.new

puts a.show_msg

puts b.show_msg
