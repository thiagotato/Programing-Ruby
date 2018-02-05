class TravelAgentSession
  def year=(y)
    @year = y.to_i
    if @year < 100
      @year = @year + 2000
    end
  end

  def year
    @year
  end
end

yas = TravelAgentSession.new
yas.year=(15)

puts yas.year
