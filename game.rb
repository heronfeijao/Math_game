require './question.rb'
require './player.rb'

# Game class will have the entire game info (inc. Players and turns)
class Game
  def initialize
    puts "What's the 1st player name?"
    print ">"
    player1 = gets.chomp
    @player1 = Player.new(player1)
    puts "What's the 2nd player name?"
    print ">"
    player2 = gets.chomp
    @player2 = Player.new(player2)
  end

  def start
    starting_player = rand(1..2)
    if starting_player == 1
      @curr_player = player1
    else
      @curr_player = player2
    "Match has started: #{@player1} vs #{@player2}"
  end


  # METHOD CALL QUESTION...
  # RETURN ANSWER...
  # => If ans is incorrect lives - 1

  def end_game (winner)
    "Match has ended with #{winner} as Winner"
  end
end
