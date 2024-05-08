require "pry"

class Medusa
attr_reader :name, :statues
attr_accessor :statues

def initialize(name)
  @name = name
  @statues = []
end

def stare(victim)
  self.statues << victim
  victim.stoned = true
  # binding.pry

  if self.statues.count > 3
      first_victim = self.statues.shift
      first_victim.stoned = false
  end

end

end
