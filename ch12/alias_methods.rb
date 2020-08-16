# The Book of Ruby - http://www.sapphiresteel.com

module Happy
	def Happy.mood
		return "happy"
	end

	def expression
		return "smiling"
	end
	alias happyexpression expression
end

module Sad
	def Sad.mood
		return "sad"
	end

	def expression
		return "frowning"
	end
	alias sadexpression expression
end

class Person
	include Happy
	include Sad
	attr_accessor :mood
	def initialize
		@mood = Happy.mood
	end
end

p2 = Person.new
puts(p2.mood) # happy
puts(p2.expression) # frowning
puts(p2.happyexpression) # smiling
puts(p2.sadexpression) # frowning
