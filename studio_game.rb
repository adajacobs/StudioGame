class Player

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

end

player1 = Player.new("moe", 100)
puts player1.inspect
