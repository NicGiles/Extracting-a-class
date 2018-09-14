class Engine
def initialize
  @running = false
end

  def start
@running = true
end

def stop
@running = false
end

def running?
  @running
end


end
