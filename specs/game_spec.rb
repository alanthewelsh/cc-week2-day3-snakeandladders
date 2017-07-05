require('minitest/autorun')
require_relative('../board.rb')
require_relative('../player.rb')
require_relative('../die.rb')
require_relative('../game.rb')

class TestGame < Minitest::Test

  def setup

  
    @player = [Player.new("Dave", 24), Player.new("Sally", 0)]
    @board = Board.new(2, 2)
    @dice = Die.new
    @game1 = Game.new(@player, @board, @dice)
    @new_player = Player.new("Debby", 0)
  end

  def test_count_player
    result = @game1.count_players(@player)
    assert_equal(2, result)
  end 

  def test_add_player
    @game1.add_player(@new_player)
    assert_equal(3, @player.count)
  end

end 