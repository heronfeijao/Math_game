# Question class will be required for each turn.
class Question
  def initialize(curr_player)
    "---> New Question <---"
    num1 = rand(1..20)
    num2 = rand(1..20)
    @question = "#{curr_player}: What does #{num1} plus #{num2} equal?"
    @answer = num1 + num2
    print ">"
    player_ans = gets.chomp
  end
end