require_relative 'player'

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