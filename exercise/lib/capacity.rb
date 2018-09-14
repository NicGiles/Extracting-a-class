class Capacity

  MAX_CAPACITY = 4

attr_reader :passengers, :maximum

  def initialize(maximum = MAX_CAPACITY)
    @passengers = []
    @maximum = MAX_CAPACITY
  end

def add_person(passenger)
  fail "Car's full mate. Do one" if full?
  passengers << passenger
end

def full?
passengers.count >= maximum
end

end
