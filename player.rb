class Player

  def initialize(name, id)
    @name = name
    @id = id
    @lives = 3
  end

  attr_reader :name, :lives

  def state
    "#{@id}: #{@lives}/3"
  end

  def lose
    @lives -= 1
  end

  def alive
    @lives > 0
  end

end