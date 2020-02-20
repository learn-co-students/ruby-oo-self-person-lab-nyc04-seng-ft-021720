# your code goes here
require 'pry'
class Person

attr_reader :name, :happiness, :hygiene, :topic
attr_accessor :bank_account

def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8 
end

def value_checker(value)
    if value > 10 
        value = 10 
    elsif value < 0 
        value = 0 
    end
    value
end 

def happiness=(happiness)
    @happiness = value_checker(happiness)
    
end 
    
def hygiene=(hygiene)
    @hygiene = value_checker(hygiene)
end 


def happy?
    happiness > 7
end 

def clean?
    hygiene > 7
end 

def get_paid(salary)
    self.bank_account += salary 
    "all about the benjamins"
end 

def take_bath
    self.hygiene += 4 
     "♪ Rub-a-dub just relaxing in the tub ♫"
end 

def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
end 


def call_friend(person)
    self.happiness += 3 
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"

end 

def start_conversation(person, topic)
    topic_determine(person,topic)

end 

def topic_determine(person, topic)
    if topic == 'politics'
        self.happiness -= 2
        person.happiness -= 2
        "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
         self.happiness += 1
         person.happiness += 1
         "blah blah sun blah rain"
    elsif topic == 'programming'


        "blah blah blah blah blah"
    end  
    

end 


end 


