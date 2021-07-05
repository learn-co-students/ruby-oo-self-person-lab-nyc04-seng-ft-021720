
class Person
  attr_accessor :bank_account
  attr_reader :name, :hygiene, :happiness
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def clean?
    @hygiene > 7 ? true : false
  end
  
  def happy?
    @happiness > 7 ? true : false
  end
  
  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end
  
  def take_bath
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def hygiene=(num)
    @hygiene = num
    @hygiene = limiter(hygiene)
  end
  
  def happiness=(num)
    @happiness = num
    @happiness = limiter(num)
  end
  
  def work_out
    self.hygiene = @hygiene += -3
    self.happiness = @happiness += 2
    "♪ another one bites the dust ♫"
  end
  
  def call_friend(friend)
    self.happiness = @happiness+= 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(starter, topic)
    case topic
    when "politics"
      self.happiness = @happiness - 2
      starter.happiness += -2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness = @happiness + 1
      starter.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
  
  def limiter(num)
    number = num
    number = 10 if num > 10
    number = 0 if num < 0
    number
  end
  

  
end