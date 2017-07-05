class Game
 attr_accessor :number_of_players
  def initialize (player, board, dice)
    @player = player
    @board = board
    @dice = dice
  
  end 

  def count_players(player)
    return player.count
  end 

  def add_player(player)
    @player << player
  end

end 