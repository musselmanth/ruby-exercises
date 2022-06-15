class Ogre

  attr_reader :name,
              :home,
              :swings

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
  end

  def encounter(human)
    human.encounter_counter += 1
    if human.notices_ogre?
      self.swing_at(human)
    end
  end

  def swing_at(human)

    @swings += 1

    if swings % 2 == 0
      human.is_knocked_out = true
    end
  end

  def apologize(human)
    human.is_knocked_out = false
  end

end


class Human
  attr_reader :name
  attr_accessor :encounter_counter, :is_knocked_out

  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @is_knocked_out = false
  end

  def notices_ogre?
    @encounter_counter % 3 == 0
  end

  def knocked_out?
    @is_knocked_out
  end

end
