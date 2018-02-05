class Ticket
  attr_reader :venue, :date
  attr_accessor :price
end

tes = Ticket.new

tes.price=(34.00)

puts tes.price
