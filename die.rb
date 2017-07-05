class Die

  attr_reader :numbers

  def initialize
    @numbers = (1..6).to_a
  end 

  def roll
    return @numbers.sample
  end 
  # def die_returns_array
  #   return @numbers
  # end

end 