module TravelAgent
  def self.book_ticket(airline, details)
    case airline
    when 'United'
      p 'booking ticket with UA'
    when 'Virgin'
      p 'booking ticket with Virgin'
    when '' # ...
      # ...
    end
  end
end


# BUT IF WE SET IT UP LIKE THIS INSTEAD

module TravelAgent
  def self.book_ticket2(airline, details)
    airline.book_ticket(details)
  end
end

class Airline
  def book_ticket(details)
    raise NotImplementedError
  end

  def arrival_time(flight_time, is_domestic?)
    if is_domestic?
      flight_time - 30
    else
      flight_time - 2*60
    end
  end
end

class UnitedAirline < Airline
  def book_ticket(details)
    p 'booking ticket with UA'
  end
end

class VirginAirline < Airline
  def initialize()
    p 'booking ticket with Virgin'
  end

  def book_ticket(details)
    @virgin.tickets.book(details)
  end
end

class QuantasAirline < Airline
  def initialize()
  end

  def book_ticket(details)
    'pdflkdj fldkjfd '
  end

  def arrival_time(flight_time, is_domestic?)
  end
end


TravelAgent.book_ticket('United', 'flight no')
TravelAgent.book_ticket2(UnitedAirline.new, 'flight no')
