# require 'capacity'
# require 'control'
# require 'engine'
# require 'person'

class Car

  attr_reader :person, :engine, :control, :capacity

  def initialize(person = Person, engine = Engine, control = Control, capacity = Capacity)
    @capacity = capacity
    @control = control
    @engine = engine
    @person = person
  end

  def driver=(person)
    fail "No driver. Canne drive" unless person.legal_driver?
    @person = person
  end

  def start_engine
    engine.start
  end

  def stop_engine
    engine.stop
  end

def pedal_to_the_metal(acceleration, time)
    control.accelerate(acceleration, time)
end

def woah_there_nelly(deacceleration, time)
    control.brake(deacceleration, time)
end

def pick_up(passenger)
    capacity.add_person
  end
#
#   private
#
#   attr_reader :passenger_limit, :top_speed, :driver
end
