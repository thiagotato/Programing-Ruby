class Array
  def my_each
    c = 0
    until c == size
      yield(self[c])
      c += 1
    end
    self
  end
end

a = [1,2,3,4,5]

a.my_each {|e| puts "The block just got handed #{e}."}
