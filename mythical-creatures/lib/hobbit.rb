class Hobbit

  attr_reader :name, :disposition, :age

  def initialize(name, disposition = 'homebody')
    @name = name
    @disposition = disposition
    @age = 0
    @is_adult = false
    @is_old = false
    @name == 'Frodo' ? @has_ring = true : @has_ring = false
    @is_short = true
  end

  def celebrate_birthday
    @age += 1
    if @age > 32
      @is_adult = true
    end
    if @age > 100
      @is_old = true
    end
  end

  def adult?
    @is_adult
  end

  def old?
    @is_old
  end

  def is_short?
    @is_short
  end

  def has_ring?
    @has_ring
  end

end
