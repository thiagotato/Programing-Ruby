class Array
  def my_map
    c = 0
    acc = []
    until c == size
      acc << yield(self[c])
      c += 1
    end
    acc
  end
end

n = ["David", "Alan", "Black"]

print n.my_map {|name| name.upcase}, "\n"


