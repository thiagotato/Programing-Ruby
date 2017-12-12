def mixed_args(a,b,*c,d)
  puts "Arguments:"
  p a,b,c,d
end

mixed_args(1,2,3,4,5)

puts
puts
puts

def args_unleashed(a,b=1,*c,d,e)
  puts "Arguments:"
  p a,b,c,d,e
  puts
  puts
  puts
end

def args_test(a,b=2,c,*d)
  puts "Args:"
  p a,b,c,d
  puts
  puts
  puts
end

args_unleashed(1,2,3,4,5)
args_unleashed(1,2,3,4)
args_unleashed(1,2,3)
args_unleashed(1,2,3,4,5,6,7,8)
#args_unleashed(1,2)

args_test(1,2)
args_test(1,2,3)
args_test(1,4,5,6,7,88)

x = 1
x++

  puts x
