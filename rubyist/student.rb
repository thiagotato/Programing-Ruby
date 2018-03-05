class Student
  def method_missing(m, *args)
    if m.to_s.start_with?("grade_for_")
      return "The argumet is #{m}"
    else
      super
    end
  end
end

a = Student.new

puts a.method_missing("grade_fo_ing")
