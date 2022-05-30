require "./question.rb"
require "./player.rb"

# Game class will have the entire game info (inc. Players and turns)
class Game
  def initialize
    puts "What's the 1st player name?"
    print ">"
    player1name = gets.chomp
    @player1 = Player.new(player1name)
    puts "What's the 2nd player name?"
    print ">"
    player2name = gets.chomp
    @player2 = Player.new(player2name)
    @players = [@player1, @player2].shuffle
    @turn = 1
  end

  def start
    puts "Match has started: #{@player1.name} vs #{@player2.name}"
  end

  def turn
    @curr_player = @players.first
    puts "---> New Question <---"
    puts "Turn ##{@turn}:"
    turn = Question.new(@curr_player)
    print ">"
    player_ans = gets.chomp.to_i
    if turn.correct?(player_ans)
      puts "YES! You are correct!"
    else
      puts "Seriously? No!"
      @curr_player.lives -= 1
    end
    puts "Player 1 (#{@player1.name}): Lives => #{@player1.lives}/3 vs Player 2 (#{@player2.name}): Lives => #{@player2.lives}/3"
  end

  def new_turn
    @turn += 1
    @players.rotate!
  end

  def game_over?
    @player1.lost? || @player2.lost?
  end

  def end_game
    if @player1.lost?
      winner = @player2
    else
      winner = @player1
    end
    puts "Match has ended with #{winner.name} as Winner"
  end

  def play
    start
    until (game_over?) do
      turn
      new_turn
      puts
    end
    end_game
  end
end
