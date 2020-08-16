# The Book of Ruby - http://www.sapphiresteel.com

# local variables declared inside a module are not
# accessible outside the module - even when the module
# is mixed in.

x = 1 # local to this program

module Foo
	 x = 50 # local to module Foo

	def no_bar
	  return x # This can be mixed in but the variable x won't then be visible
	end

	def bar
		@x = 1000 # You can mix in methods with instance variables, however!
		return  @x
	end
	puts( "In Foo: x = #{x}" ) # this can access its local x
end

class Show
	include Foo # In Foo: x = 50
end

puts(x) # 1
puts(Show.new.bar) # 1000
puts( Show.new.no_bar ) # undefined local variable or method `x' for main:Object (NameError)
