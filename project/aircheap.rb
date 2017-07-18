require 'net/http'

class Input_fly

  def initialize(fly_from, fly_to, dt_depart, dt_return, n_travellers)
    @fly_from = fly_from
    @fly_to = fly_to
    @dt_depart = dt_depart
    @dt_return = dt_return
    @n_travellers = n_travellers
  end

end
