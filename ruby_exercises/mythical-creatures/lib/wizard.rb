require "pry"

class Wizard
  attr_reader :name, :has_beard, :rested, :spell_cast_count
  attr_accessor :spell_cast_count, :rested

  def initialize(name, has_beard = true)
    @name = name
    @has_beard = has_beard.is_a?(Hash) ? has_beard[:bearded] : has_beard
    @rested = true
    @spell_cast_count = 0
  end

  def bearded?
    has_beard
  end

  def self.magical
    true
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    self.rested
  end

  def cast
    self.spell_cast_count += 1
    if spell_cast_count > 2
      self.rested = false
    end
    return "MAGIC MISSILE!"
  end

end
