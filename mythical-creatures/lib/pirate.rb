class Pirate

  attr_reader :name, :job, :booty

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @is_cursed = false
    @heinous_acts = 0
    @booty = 0
  end

  def commit_heinous_act
    @heinous_acts += 1
    if @heinous_acts > 2
      @is_cursed = true
    end
  end

  def cursed?
    @is_cursed
  end

  def rob_ship
    @booty += 100
  end

end
