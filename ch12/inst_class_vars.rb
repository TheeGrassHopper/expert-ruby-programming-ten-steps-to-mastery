# The Book of Ruby - http://www.sapphiresteel.com

module X
	@instvar = "X's @instvar"
	@anotherinstvar = "X's 2nd @instvar"
	@@classvar = "X's @@classvar"

	def amethod
		@instvar = 10
		puts(@instvar)
	end

	def self.aaa
		puts(@instvar)
	end
end

include X

X.aaa						#=> X's @instvar
p( @instvar )				#=> nil
amethod						#=> 10
puts( @instvar )			#=> 10
@instvar = "hello world"
puts( @instvar )			#=> "hello world"
puts( @@classvar )			#=> X's @classvar
@@classvar = "bye bye"
puts( @@classvar )			#=> "bye bye"

p( X.instance_variables ) # Module X's instance variables... [:@instvar, :@anotherinstvar]
p( X.class_variables ) #  Module X's class variables... [:@classvar]
p( self.instance_variables ) # self's instance variables... [:@instvar]
