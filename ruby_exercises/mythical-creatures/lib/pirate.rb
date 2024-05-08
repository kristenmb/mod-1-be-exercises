class Pirate
  attr_reader :name, :job, :cursed, :booty, :heinous_act_count
  attr_accessor :heinous_act_count, :booty, :cursed

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @cursed = false
    @heinous_act_count = 0
    @booty = 0
  end

  def cursed?
    cursed
  end

  def commit_heinous_act
    self.heinous_act_count += 1
    if heinous_act_count > 2
      self.cursed = true
    end
  end

  def rob_ship
    self.booty += 100
  end
end
