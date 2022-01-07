require('./player.rb')
require('./questions.rb')

class Turn
  attr_reader :player_1, :player_2, :turn  # :question, :correct_answer
  def initialize
    # @player = player.new(name)
    # @question = Question.new
    # @correct_answer = question.answer
    @player_1 = Player.new("1")
    @player_2 = Player.new("2")
    @turn = 0
  end
  
  def start_turn
    done = false

    while !done
      question = Question.new
      correct_answer = question.answer

      if answer != correct_answer
        player.life -= 1
        puts "#{player_1.name} Seriously? No!"
        puts "------ NEW TURN --------"
        question = Question.new
        correct_answer = question.answer
        puts "#{player_2.name} What does #{question.num_one} plus #{question.num_two} equals?"
        answer = gets.chomp.to_i
      end
      if answer == correct_answer
        puts "#{player_1.name} YES! You are correct."
        puts "P1: #{player_1.life}/3 vs P2: #{player_2.life}/3"
        answer = gets.chomp.to_i
      end
      if player.life <= 0
        done = true
      end
    end
    points += 1
    puts "Turn over and score is #{player.life}"
  end
end

turn1 = Turn.new
turn1.start_turn