class Person
  
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def happiness=(new_happiness)
    @happiness = limit(new_happiness)
  end
  
  def hygiene=(new_hygiene)
    @hygiene = limit(new_hygiene)
  end
  
  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end
  
  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end
  
  def get_paid(salary)
    @bank_account += salary
    'all about the benjamins'
  end

  def happiness_change(change_amount)
    self.happiness = @happiness + change_amount
  end
  
    def hygiene_change(change_amount)
    self.hygiene = @hygiene + change_amount
  end

  def take_bath
    hygiene_change(4)
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end
  
  def work_out
    happiness_change(2)
    hygiene_change(-3)
    "♪ another one bites the dust ♫"
  end
  
  def call_friend(person_instance)
    self.happiness_change(3)
    person_instance.happiness_change(3)
    "Hi #{person_instance.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person_instance, topic)
    if topic == "politics"
      self.happiness_change(-2)
      person_instance.happiness_change(-2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness_change(1)
      person_instance.happiness_change(1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

  def limit(num)
    min = 0
    max = 10
    if num > 10
      10
    elsif
      num < 0
      0
    else
      num
    end
  end
  
end
