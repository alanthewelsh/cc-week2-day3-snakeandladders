class Board

  attr_reader :square

  def initialize (ladder, snake)
    @square = (1..30).to_a
    @ladder = []
    @snake = []
  end

  def snake_fall(snake)
    return snake[:start] - snake[:end]
  end 

  def ladder_climb(ladder)
    return ladder[:end] - ladder[:start]
  end 


end 