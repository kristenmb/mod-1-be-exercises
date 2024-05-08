class Stark
  attr_reader :name, :location, :house_words
  attr_accessor :safe

  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
    @safe = false
    @house_words = 'Winter is Coming'
  end

  def safe?
    safe
  end
end
