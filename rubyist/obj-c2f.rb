obj = Object.new

def obj.c2f(c)
	return c * 9.0 / 5 + 32
end

puts obj.c2f(100)
