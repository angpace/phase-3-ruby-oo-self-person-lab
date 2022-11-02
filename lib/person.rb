# your code goes here
require "pry"
class Person 

attr_reader :name, :bank_account, :happiness, :hygiene
attr_writer :bank_account, :happiness, :hygiene

def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene

end

def bank_account
    @bank_account
end

def happiness
    @happiness.clamp(0, 10)
end

def hygiene
    @hygiene.clamp(0, 10)
end 

def happy?
    if @happiness > 7
        true
    else @happiness < 7 
        false
 end
end

def clean?
    if @hygiene > 7
        true
    else @hygiene < 7
        false
    end
    end

def get_paid (amount)
    @bank_account += amount 
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

def call_friend (pers)
    pers.happiness += 3
    self.happiness += 3
    "Hi #{pers.name}! It's #{self.name}. How are you?"
end

def start_conversation (pers, topic)
    if topic == "politics"
        pers.happiness -= 2
        self.happiness -= 2
        'blah blah partisan blah lobbyist'
    elsif 
        topic == "weather" 
        pers.happiness += 1
        self.happiness += 1
        'blah blah sun blah rain'
    else 
        topic == "other"
        'blah blah blah blah blah'
    end
end
    

end
