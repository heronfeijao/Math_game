# Question class will be required for each turn.
class Question
  attr_reader :question, :answer

  def initialize(curr_player)
    num1 = rand(1..20)
    num2 = rand(1..20)
    @answer = num1 + num2
    puts "#{curr_player.name}: What does #{num1} plus #{num2} equal?"
  end

  def correct?(player_ans)
    player_ans == @answer
  end
end
