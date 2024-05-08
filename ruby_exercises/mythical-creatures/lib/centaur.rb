class Centaur
  attr_reader :name, :breed
  attr_accessor :cranky, :standing, :action_count, :laying, :sick

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @action_count = 0
    @sick = false
  end

  def shoot
    if action_count > 2 or laying
      'NO!'
    else
    self.action_count += 1
   'Twang!!!'
    end
  end

  def run
    if standing
    self.action_count += 1
    'Clop clop clop clop!'
    else
      'NO!'
    end
  end

  def cranky?
    if action_count > 2
      self.cranky = true
    else
      self.cranky = false
    end
  end

  def standing?
    standing
  end

  def laying?
    laying
  end

  def sleep
    if standing
      'NO!'
    else
      self.action_count = 0
      'Zzzz'
    end
  end

  def lay_down
    self.standing = false
    self.laying = true
  end

  def stand_up
    self.laying = false
    self.standing = true
  end

  def drink_potion
    if standing and action_count > 0
    self.action_count = 0
    else
      self.sick = true
      'NO!'
    end
  end

  def sick?
    sick
  end
end


# i know the hanlding of cranky could probably be done differently here but my mushy lil brain gave up on me.
