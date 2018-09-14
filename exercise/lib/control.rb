class Control
  TOP_SPEED = 2000

attr_reader :speed, :top_speed

  def initialize
    @top_speed = TOP_SPEED
    @speed = 0
  end

  def accelerate(acceleration, time)
    time.times do
      break if speed >= top_speed
      @speed += acceleration
    end
  end

  def brake(deacceleration, time)
      time.times do
      break if speed <= 1
      @speed -= deacceleration
    end
  end
end
