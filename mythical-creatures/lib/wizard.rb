class Wizard
  attr_reader :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spells_casted = 0
  end

  def bearded?
    @bearded
  end

  def incantation(command)
    "sudo " + command
  end

  def rested?
    @rested
  end

  def cast
    @spells_casted += 1
    if @spells_casted > 2
      @rested = false
    end
    "MAGIC MISSILE!"
  end


end
