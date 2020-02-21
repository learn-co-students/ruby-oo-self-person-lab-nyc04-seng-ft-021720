# your code goes here
require 'pry'

class Person
    attr_accessor :bank_account, :happiness, :hygiene, :happiness, :salary

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @salary = 0
    end

    def name
        @name
    end

    def bank_account
        @bank_account
    end

    def happiness=(happiness)
        @happiness = happiness.clamp(0, 10)
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0, 10)
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(num)
       @salary = num
       @bank_account += @salary
       return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
        self.hygiene=(num)
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
            person.happiness -= 2
            self.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            person.happiness += 1
            self.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end



end