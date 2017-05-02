name = 'Thiago Tato'
age = 32
height = 76 #inches
weight = 220 #lbs
eyes = 'Brown'
teeth = 'White'
hair = 'Black'

centimeters = height / 39.370
kilos = weight / 2.20462

puts "Let's talk about #{name}."
puts "He's #{height} inches tall or #{centimeters.round(2)} centimeters tall."
puts "He's #{weight} pounds heavy or #{kilos.round(2)} kilos heavy."
puts "Actually that's not too heavy"
puts "He's got #{eyes} eyes and #{hair} hair"
puts "His teeth are asually #{teeth} depending on the coffee."

puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}"
