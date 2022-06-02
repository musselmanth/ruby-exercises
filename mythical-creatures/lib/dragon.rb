class Dragon

  attr_reader :name, :color, :rider

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @is_hungry = true
    @food = 0
  end

  def eat
    @food += 1
    if @food >= 3
      @hungry = false
    end
  end

  def hungry?
    @is_hungry
  end

end
