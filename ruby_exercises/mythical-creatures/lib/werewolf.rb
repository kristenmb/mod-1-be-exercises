require "pry"
class Werewolf
  attr_reader :name, :location
  attr_accessor :human, :wolf, :hungry, :eat_count

  def initialize(name, location = 'London')
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
    @eat_count = 0
  end

  def human?
    human
  end

  def change!
    self.human = !human
    self.wolf = !wolf
    if wolf
    self.hungry = true
    end
  end

  def wolf?
    wolf
  end

  def hungry?
    hungry
  end

  def consume(victim)
    if wolf
    self.eat_count += 1
    self.hungry = false
    victim.status = :dead
    end
  end


end
