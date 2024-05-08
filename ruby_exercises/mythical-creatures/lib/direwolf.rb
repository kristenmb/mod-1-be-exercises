class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect
  attr_accessor :hunts

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts = true
  end

  def protects(stark)
    if stark.location == home and starks_to_protect.count < 2
    self.starks_to_protect << stark
    stark.safe = true
    self.hunts = false
    end
  end

  def hunts_white_walkers?
    hunts
  end

  def leaves(stark)
    stark.safe = false
    starks_to_protect.delete(stark)
    stark
  end
end
