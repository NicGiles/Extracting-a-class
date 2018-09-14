class Person

DRIVINGAGE = 17

  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def legal_driver?
    age >= DRIVINGAGE
  end

  def full_name
    "#{first_name} #{last_name}"
  end


end
