$gvar = "I'm a global!"
class C
  def examinate_global
    puts $gvar
  end
end

c = C.new
c.examinate_global
