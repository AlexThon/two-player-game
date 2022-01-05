# TwO-O-Player Math Game - Execution

Classes
  Player => object describing a player entity
    instant variables:
     - name : string
     - player score : int
     - life : int
     - is_answer?: boolean
  initialize (name, score, life, is_answer?)
  getter/setter
    @name, @score, @life, @is_answer
  behavior
    answer_question(question) 
     

 Game => prompts player for answers and keep track of scores and lives
   instant variables
    - life
    - gameScore
    - players
  questions() - promt user for ansers

