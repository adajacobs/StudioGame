class Player

  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  
  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end
  
  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end
  
  def score
    @health + @name.length
  end
  
end

class Game
  
  attr_reader :title

  def initialize(title)
    @title = title.capitalize
    @players = []
  end
  
  def add_player(name)
    @players << name
  end

  def play
    puts "There are #{@players.count} players in #{@title}:"
    puts @players
    @players.each do |player|
      player.w00t
      player.w00t
      player.blam
      puts player
    end
  end

end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

player4 = Player.new("Adam", 34)
player5 = Player.new("Mackenzie", 28)

weiners = Game.new("Weiners")
weiners.add_player(player4)
weiners.add_player(player5)
weiners.play