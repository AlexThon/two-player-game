# generates questions
# values generated range from 1 to 20 => rand(1..20)

class Question 
  attr_accessor :answer, :num_one, :num_two
  def initialize()
    @num_one = rand(1..20)
    @num_two = rand(1..20)
    # puts "What does #{@num_one} plus #{@num_two} equals?"
    @answer = @num_one + @num_two
  end
end

q = Question.new
