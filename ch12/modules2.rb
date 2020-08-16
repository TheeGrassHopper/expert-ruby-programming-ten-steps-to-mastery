# The Book of Ruby - http://www.sapphiresteel.com

module MyModule
   GOODMOOD = "happy"
   BADMOOD = "grumpy"

	def good_mood
		return "I'm #{GOODMOOD}. How are you?"
	end

	def self.bad_mood
		return "I'm #{BADMOOD}. How are you?"
	end

	private_class_method :bad_mood
	# private_class_method :good_mood
end

class Greetings
	include MyModule
end

include MyModule
puts( good_mood ) # I'm happy. How are you?
puts( MyModule.bad_mood ) # I'm grumpy. How are you?

g = Greetings.new
puts( g.good_mood )  # I'm happy. How are you?
puts( Greetings.bad_mood ) # NoMethodError
