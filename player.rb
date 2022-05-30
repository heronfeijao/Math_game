# Player class will create new players
class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lost?
    @lives <= 0
  end
end
