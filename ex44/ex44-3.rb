module Other
  
  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def Other.altered()
    puts "OTHER altered()"
  end
end

class Child
  include Other

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD BEFORE OTHER implicit()"
    Other.altered()
    puts "CHILD AFTER OTHER implicit()"
  end
end

son = Child.new()

son.implicit()
puts

son.override()
puts

son.altered()
