print "How old are you: "
age = gets.chomp.delete("3")
print "How tall are you: "
height = gets.chomp
print "How much do you weight: "
weight = gets.chomp
print "Have you ever traveled abroad:"
answer = gets.upcase.reverse

puts "#{answer}"
puts "#{age.to_i * height.to_i}"
puts "So, you're #{age} old, #{height} tall and #{weight} heavy"
