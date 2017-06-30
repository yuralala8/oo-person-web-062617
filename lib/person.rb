class Person

attr_reader :name#, :balance, :happiness
#attr_accessor :balance

def initialize(name)
  @name = name
  @balance = 25
  @hygiene_index = 8
  @happiness_index = 8
end

def bank_account
   @balance
end

def bank_account=(balance)
  @balance = balance
end

def happiness
  if @happiness_index < 0
    self.happiness = 0
  elsif @happiness_index > 10
    self.happiness = 10
  else
    @happiness_index
  end
end

def happiness=(happiness_index)
  @happiness_index = happiness_index
end

def hygiene
  if @hygiene_index < 0
    self.happiness = 0
  elsif @hygiene_index > 10
    self.happiness = 10
  else
    @hygiene_index
  end
end

def hygiene=(hygiene_index)
  @hygiene_index = hygiene_index
end


def happy?
  if happiness > 7
    true
  else
    false
  end
end

def clean?
  if hygiene > 7
    true
  else
    false
  end
end

def get_paid(salary)
  @balance += salary
  "all about the benjamins"
end

def take_bath
  self.hygiene += 4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness += 2
  self.hygiene -= 3
  "♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  return "Hi #{friend.name}! It's #{@name}. How are you?"
end

def start_conversation(friend, topic)
  if topic == "politics"
    self.happiness -= 2
    friend.happiness -= 2
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness += 1
    friend.happiness += 1
    return "blah blah sun blah rain"
  else
    self.happiness = self.happiness
    friend.happiness = friend.happiness
    "blah blah blah blah blah"
  end


end

end
