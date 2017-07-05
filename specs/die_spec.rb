require('minitest/autorun')
require_relative('../board.rb')
require_relative('../player.rb')
require_relative('../die.rb')

class TestDie < Minitest::Test

  def test_die_can_produce_number
    new_dice = Die.new()
    new_dice_number = new_dice.roll
    assert_includes((1..6), new_dice_number)
  end

  # def test_die_returns_array
  #     # Die.new()
  #     result = dice_roll
  #   assert_includes((1..6), result)
  # end


end 