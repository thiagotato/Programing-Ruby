obj = Object.new
def obj.show_me
  puts "Inside singleton methon show_me of #{self}"
end

obj.show_me
puts "Back from call to show_me by #{obj}"
