class C
  def C.no_dot
    puts "As long as self is C, you can call this method with no dot"
  end
  no_dot
end
C.no_dot
