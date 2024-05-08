require "pry"

class Dragon
  attr_reader :name, :color, :rider, :is_hungry, :eat_count
  attr_accessor :eat_count, :is_hungry

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @is_hungry = true
    @eat_count = 0
  end

  def hungry?
    is_hungry
  end

  def eat
    self.eat_count += 1
    if eat_count >= 3
      self.is_hungry = false
    end
  end

end
