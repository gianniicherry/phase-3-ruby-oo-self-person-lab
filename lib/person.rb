# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness
    attr_reader :hygiene
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account  
        @happiness = happiness
        @hygiene = hygiene
    end
    def happiness=(happy_meter)
        if happy_meter < 11 && happy_meter > -1
            @happiness = happy_meter
        elsif happy_meter > 10
            @happiness = 10
        elsif happy_meter < 0
            @happiness = 0
        end
    end
    def hygiene=(hygiene_meter)
        if hygiene_meter < 11 && hygiene_meter > -1
            @hygiene = hygiene_meter
        elsif hygiene_meter > 10
            @hygiene = 10
        elsif hygiene_meter < 0
            @hygiene = 0
        end
    def happy?
        if @happiness > 7
            true
        else 
            false
        end
    end
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end
        def get_paid(amount)
            @bank_account += amount
            "all about the benjamins"
        end
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
        def call_friend(person_calling)
            person_calling.happiness += 3
            self.happiness += 3
            "Hi #{person_calling.name}! It's #{self.name}. How are you?"
        end
        def start_conversation(convo_person, topic)
            if topic == "politics"
                self.happiness -= 2
                convo_person.happiness -=2
                "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                self.happiness += 1
                convo_person.happiness += 1
                "blah blah sun blah rain"
            else
                "blah blah blah blah blah"
            end
        end

end