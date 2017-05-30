ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ')
stuff2 = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

while stuff.length != 10
  next_one = more_stuff.pop
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "There are #{stuff.length} itens now."
end

puts "There we go #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")

puts "----------------------------------------------------------------------"

for i in (stuff2.length..9)
  next_one = more_stuff.shift
  puts "Adding: #{next_one}"
  stuff2.push(next_one)
  puts "There are #{stuff2.length} itens now."
end

puts "There we go #{stuff2}"

puts "Let's do some things with stuff."

puts stuff2[1]
puts stuff2[-1]
puts stuff2.pop()
puts stuff2.join(' ')
puts stuff2[3..5].join("#")
