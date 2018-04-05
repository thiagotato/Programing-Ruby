def block_args_unleashed
  yield(1,2,3,4,5)
end

block_args_unleashed do |a,b=1,*c,d,e|
  puts "Args:"
  p a,b,c,d,e
end
