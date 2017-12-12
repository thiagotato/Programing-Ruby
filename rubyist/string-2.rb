def change_string(str)
  str.replace("New string content!")
end

s = "Original string content!"
s.freeze

puts s

change_string(s.dup)

puts s

numbers = ["one", "two", "three"]
numbers.freeze
print numbers, "\n"

#numbers[2] = "four"

numbers[2].replace("four")

print numbers, "\n"
