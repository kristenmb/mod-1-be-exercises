class Person
  attr_reader :name, :stoned
  attr_accessor :stoned, :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    self.stoned
  end
end
