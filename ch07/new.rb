require './class_hierarchy'
# The Book of Ruby - http://www.sapphiresteel.com

class MyClass1 < MyClass
	def initialize( aStr )
		@avar = aStr
	end
	
	def MyClass1.new( aStr ) # returns a string object!
		 super
		 @anewvar = aStr.swapcase		
	end
end

ob = MyClass.new( "hello world" )
puts( ob )
puts( ob.class )

