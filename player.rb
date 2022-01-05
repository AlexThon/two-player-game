class Player
  attr_accessor :name, :score, :life
  def initialize(name)
    @name = "Player #{name}: "
    @score = 0
    @life = 3
  end
  
end

player = Player.new("1")
puts player.name