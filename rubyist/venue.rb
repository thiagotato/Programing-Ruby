class Ticket
  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]

  def initialize(venue, date)
    if VENUES.include?(venue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
  end
end

venues = Ticket::VENUES
venues << "High School Gym"

puts Ticket::VENUES
