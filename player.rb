
class Player
  attr_reader :life, :name

  def initialize(name, life)
    @name = name
    @life = life
  end

  def life_decrease
    @life -=1
  end

  def validate_answer(expected, answer)
    if expected != answer
      self.life_decrease
      return puts "#{name} Seriously? No!"   
    end   
    return puts "Yes! #{name}, you are correct."  
  end
end