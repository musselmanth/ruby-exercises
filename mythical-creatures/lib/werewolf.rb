class Werewolf
  attr_reader :name,
              :location,
              :victims

  def initialize(name, location = "London")
    @name = name
    @location = location
    @is_human = true
    @is_wolf = false
    @is_hungry = false
    @victims = []
  end

  def human?
    @is_human
  end

  def wolf?
    @is_wolf
  end

  def hungry?
    @is_hungry
  end

  def change!
    @is_human = !@is_human
    @is_wolf = !@is_wolf
    @is_hungry = @is_wolf
  end

  def consume(victim)
    if @is_wolf
      victim.status = :dead
      @victims << victim
    end
    @is_hungry = false
  end

end
