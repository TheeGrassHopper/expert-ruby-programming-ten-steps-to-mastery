# The Book of Ruby - http://www.sapphiresteel.com

module MyModule
   GOODMOOD = "happy"
   BADMOOD = "grumpy"
	 NEUTRAL = "whatever"

	def greet
		"I'm feeling #{GOODMOOD}. How are you?"
	end

	def MyModule.bad
		"I'm feeling #{BADMOOD}. How are you?"
	end

  def self.neutral
		"I'm feeling #{NEUTRAL}. How are you? " + bad
	end

	 private_class_method :bad
end

class Greetings
	include MyModule
end

puts Greetings.new.bad # => undefined method `bad' for #<Greetings>
puts MyModule.bad # => private method `bad' called for MyModule
