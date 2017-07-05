require('minitest/autorun')
require_relative('../board.rb')
require_relative('../player.rb')
require_relative('../die.rb')

class TestPlayer < Minitest::Test

  def setup

    @player1 = Player.new("Dave", 24)
    @player2 = Player.new("Sally", 0)

  end

  def test_player_has_name
    assert_equal("Dave", @player1.player_name())
  end

  def test_start_positon
    assert_equal(0, @player2.position())
  end

  def test_change_player_position
    old_position = @player2.position
    new_position = @player2.position += 2
    change_difference = new_position - old_position
    assert_equal(2, change_difference)
  end 

  def test_move_player
    @player1.move_player(3)
    assert_equal(27, @player1.position)
  end




end 