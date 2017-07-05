class Player

  attr_reader :player_name
  attr_accessor :position

  def initialize (player_name, position)
    @player_name = player_name
    @position = position
  end 

  def move_player(move)
    @position += move
  end

 

end