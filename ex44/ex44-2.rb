class Other
  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Child

  def initialize()
    @other = Other.new()
  end

  def implicit()
    @other.implicit()
  end

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD BEFORE OTHER implicit()"
    @other.altered()
    puts "CHILD AFTER OTHER implicit()"
  end
end

son = Child.new()

son.implicit()
puts

son.override()
puts

son.altered()
