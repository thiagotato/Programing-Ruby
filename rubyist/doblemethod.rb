module InterestBearing
  def calculate_interest
    puts "Placeholder! We're in module IterestBearing"
  end
end

class BankAccont
  include InterestBearing

  def calculate_interest
    puts "Placeholder we're in class BankAccont"
    puts "And we're orverriding the calculate_interest method..."
    puts "which was defined in the InterestBearing module"
  end
end

accont = BankAccont.new
accont.calculate_interest
