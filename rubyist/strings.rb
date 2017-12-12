str = "Hello"
abc = str
str.replace("Goodbye")
puts str
puts abc

def say_goodbye
  str = "Hello"
  abc = str
  str.replace("Goodbye")
  puts str
  puts abc
end

say_goodbye


str = "Hello"
puts "#{str.object_id}"
abc = str
puts "#{abc.object_id}"
str = "Goodbye"
puts "#{str.object_id}"
puts str
puts abc


test = "a"
puts "#{test.object_id}"
test = "a"
puts "#{test.object_id}"
