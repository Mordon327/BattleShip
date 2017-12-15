class Player
  attr_accessor :player_name, :battleship, :player_attacks
  @player_attacks = []

  def ship_edit ship_name, array
    if ship_name == @battleship
      @battleship = array
    # elsif ship_name == @aircraft
    #   @aircraft = array
    # elsif ship_name == @cruiser
    #   @cruiser = array
    # elsif ship_name == @destroyer
    #   @destroyer = array
    # elsif ship_name == @submarine
    #   @submarine = array
    else
      puts "nope"
    end
  end

  def ship_hit ship_name, location
      ship_location = ship_name
      ship_location -= [location]
    if ship_name == @battleship
      ship_edit @battleship, ship_location
    # elsif ship_name == @aircraft
    #   ship_edit @aircraft, ship_location
    # elsif ship_name == @cruiser
    #   ship_edit @cruiser, ship_location
    # elsif ship_name == @destroyer
    #   ship_edit @destroyer, ship_location
    # elsif ship_name == @submarine
    #   ship_edit @submarine, ship_location
    else
      puts "nope"
    end
  end
end

player1 = Player.new
puts "What is your name?"
puts player1.player_name = "General " + gets.chomp

places = []
loop do
answer = "no"
puts "Pick the locations for your Battleship.  The Battleship occupies four places."
places << gets.chomp
places << gets.chomp
places << gets.chomp
places << gets.chomp
player1.ship_edit player1.battleship, places
puts "Your ship was placed at: " 
p player1.battleship
puts "Is this correct? yes/no"
answer = gets.chomp
places = []
break if answer == "yes"
end


# player1.ship_hit player1.battleship, "a1"
# puts player1.battleship
# player1.ship_hit player1.battleship, "a1"
# puts player1.battleship











