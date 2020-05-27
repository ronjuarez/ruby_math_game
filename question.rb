
class Question
  def self.ask_question
    x = rand(9) + 1
    y = rand(9) + 1
    
    print "What does #{x} + #{y} equal? "

    return x + y
  end
end