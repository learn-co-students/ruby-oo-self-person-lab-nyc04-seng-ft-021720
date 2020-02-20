# your code goes here

require 'pry'

class Person
	attr_accessor :bank_account
	attr_reader :happiness, :name, :hygiene

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

	def happiness_change(change_amount)
		self.happiness = @happiness + change_amount
	end

	def hygiene_change(change_amount)
		self.hygiene = @hygiene + change_amount
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

	def get_paid(dollars)
		@bank_account += dollars
		'all about the benjamins'
	end

	def take_bath
		self.hygiene_change(4)
		'♪ Rub-a-dub just relaxing in the tub ♫'
	end

	def work_out
		self.happiness_change(2)
		self.hygiene_change(-3)
		'♪ another one bites the dust ♫'
	end

	def call_friend(person_instance)
		self.happiness_change(3)
		person_instance.happiness_change(3)
		"Hi #{person_instance.name}! It's #{@name}. How are you?"
	end

	def start_conversation(person_instance, topic)
		if topic == 'politics'
			change_amount = 2
			self.happiness_change(-change_amount)
			person_instance.happiness_change(-change_amount)
			'blah blah partisan blah lobbyist'
		elsif topic == 'weather'
			change_amount = 1
			self.happiness_change(change_amount)
			person_instance.happiness_change(change_amount)
			'blah blah sun blah rain'
		else
			'blah blah blah blah blah'
		end
	end


	private

	def limit(integer_variable)
		min = 0
		max = 10
		if integer_variable > 10
			10
		elsif integer_variable < 0
			0
		else
			integer_variable
		end
	end

end