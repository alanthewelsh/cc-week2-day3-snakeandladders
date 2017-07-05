require('minitest/autorun')
require_relative('../board.rb')
require_relative('../player.rb')
require_relative('../die.rb')

class TestBoard < Minitest::Test

def setup
  @board1 = Board.new(@ladder, @snake)

    @ladder = [
      {
        start: 4,
        end: 22
      },
      {
        start: 12,
        end: 26
      }
    ]
    @snake = [
      {
        start: 20,
        end: 11
      },
      {
        start: 14,
        end: 2
      }
    ]


end

  def test_board_has_30_squares
    board_squares = @board1.square
    assert_equal(30, board_squares.count)
  end 

  def test_snake_fall_amount
    result = @board1.snake_fall(@snake[0])
    assert_equal(9, result)
  end 

  def test_ladder_climb_amount
    result = @board1.ladder_climb(@ladder[0])
    assert_equal(18, result)
  end 

end 