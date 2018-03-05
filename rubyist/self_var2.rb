class C
  def show_var
    @v = "I'm an instance variable initialized to a string."
    puts @v
  end
  @v = "Instance variables can appear anywhere..."
end

C.new.show_var
