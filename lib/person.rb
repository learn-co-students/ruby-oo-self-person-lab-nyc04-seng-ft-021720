# your code goes here
require 'pry'
class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness= (i)
    i = 10 if i > 10
    i = 0 if i < 0
    @happiness = i
  end

  def hygiene= (i)
    i = 10 if i > 10
    i = 0 if i < 0
    @hygiene = i
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    p "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    # binding.pry
    p '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    p '♪ another one bites the dust ♫'
  end

  def call_friend(friend_name)
    self.happiness += 3
    friend_name.happiness += 3
    p "Hi #{friend_name.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend_name, topic)
    if topic == 'politics'
      self.happiness -= 2
      friend_name.happiness -= 2
      p 'blah blah partisan blah lobbyist' 
    elsif topic == 'weather'
      self.happiness += 1
      friend_name.happiness += 1
      p 'blah blah sun blah rain' 
    else
      p 'blah blah blah blah blah'
    end
  end
end