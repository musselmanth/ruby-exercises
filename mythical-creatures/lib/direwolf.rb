class Direwolf

  attr_reader :name,
              :home,
              :size,
              :starks_to_protect

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts_white_walkers = true
  end

  def protects(stark)
    if @home == stark.location && @starks_to_protect.length < 2
      @starks_to_protect << stark
      stark.is_safe = true
      @hunts_white_walkers = false
    end
  end

  def hunts_white_walkers?
    @hunts_white_walkers
  end

  def leaves(stark)
    stark.is_safe = false
    @starks_to_protect.delete(stark)
    if @starks_to_protect.length == 0
      @hunts_white_walkers = true
    end
    stark
  end

end


class Stark

  attr_reader :name,
              :location,
              :house_words

  attr_writer :is_safe

  def initialize(name, location = 'Winterfell', house_words = 'Winter is Coming')
    @name = name
    @location = location
    @is_safe = false
    @house_words = house_words
  end

  def safe?
    @is_safe
  end

end
