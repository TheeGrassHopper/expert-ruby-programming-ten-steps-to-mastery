# The Book of Ruby - http://www.sapphiresteel.com

def showFamily( aClass )
	if (aClass != nil) then
		puts( aClass )
		showFamily( aClass.superclass )
	end
end

# puts( "Class hierarchy of Class..." )
# showFamily( Class )

module Say
	def self.say_hello
		puts 'helooooooo'
	end
end

class X < Module

end

x = X.new()
# puts(x)
# puts( "Class hierarchy of X..." )
showFamily( X )

