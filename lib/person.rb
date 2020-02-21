class Person
attr_accessor :bank_account, :happiness ,:hygiene

def initialize(name)
    @name  = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
end


def name
    @name
end

def clean?
    if @hygiene > 7
        true
    else
        false
    end


end

def happiness
    if @happiness >10
        @happiness = 10
    elsif @happiness < 0
        @happiness = 0
    end
    @happiness
end
def hygiene
    if @hygiene > 10
        @hygiene = 10
    elsif @hygiene < 0
        @hygiene = 0
    end
    @hygiene
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
"all about the benjamins"
end


def take_bath
 self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.happiness = @happiness + 2
    self.hygiene = @hygiene - 3
    "♪ another one bites the dust ♫"
end


def call_friend(name)
    self.happiness = @happiness + 3
    name.happiness = name.happiness + 3
    "Hi "+name.name.to_s+"! It's "+self.name.to_s+". How are you?"
end
def start_conversation(name,topic)
    if topic == "politics"
        self.happiness = @happiness - 2
        name.happiness = name.happiness - 2
        "blah blah partisan blah lobbyist"
    
    elsif topic == "weather"
        self.happiness = @happiness + 1
        name.happiness = name.happiness + 1
        "blah blah sun blah rain"
    else
        "blah blah blah blah blah"
    end

end
end