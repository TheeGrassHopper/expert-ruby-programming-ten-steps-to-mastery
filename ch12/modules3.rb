# The Book of Ruby - http://www.sapphiresteel.com

module MyModule
   GOODMOOD = "happy"
   BADMOOD = "grumpy"

	def good_mood
		return "I'm #{GOODMOOD}. How are you?"
	end

	def MyModule.bad_mood
		return "I'm #{BADMOOD}. How are you?"
	end
end


class MyClass
   include MyModule
	 # private
	def sayHi
		puts( good_mood )
	end

end

ob = MyClass.new
ob.sayHi # I'm happy. How are you?
puts(ob.good_mood) # I'm happy. How are you?
