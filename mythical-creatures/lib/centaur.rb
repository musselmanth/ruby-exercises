class Centaur
  attr_reader :name,
              :breed,
              :fatigue,
              :sticks

  def initialize(name, breed)
    @name = name
    @breed = breed
    @is_standing = true
    @fatigue = 0
    @sticks = 0
  end

  def shoot
    if self.cranky? || self.laying?
      "NO!"
    else
      @fatigue += 1
      "Twang!!!"
    end
  end

  def run
    if self.laying?
      "NO!"
    else
      @fatigue += 1
      "Clop clop clop clop!"
    end
  end

  def sleep
    if self.standing?
      "NO!"
    else
      @fatigue = 0
    end
  end

  def lay_down
    @is_standing = false
  end

  def stand_up
    @is_standing = true
  end

  def drink_potion
    if @fatigue = 0
      @sticks += 1
    end
    if self.standing?
      @fatigue = 0
    else
      "NO!"
    end
  end

  def cranky?
    @fatigue > 2
  end

  def standing?
    @is_standing
  end

  def laying?
    !@is_standing
  end

end
