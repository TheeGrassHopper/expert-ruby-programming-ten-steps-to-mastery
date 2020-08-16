# The Book of Ruby - http://www.sapphiresteel.com

module MagicThing
	attr_accessor :power
end

module Treasure
	attr_accessor :value
	attr_accessor :owner
end

class Weapon
	attr_accessor :deadliness
end

class Sword < Weapon
  include Treasure
  include MagicThing

  attr_accessor :name

	def initialize(name, deadliness, value, owner, power)
		@name=name
		@deadliness=deadliness
		@value=value
		@owner=owner
		@power=power
	end
end
s = Sword.new("Excalibur",
              "fatal",
              1000,
              "Gribbit The Dragon",
              "Glows when Orcs appear")
puts(s.name) # Excalibur
puts(s.deadliness) # fatal
puts(s.value) # 1000
puts(s.owner) # Gribbit The Dragon
puts(s.power) #Glows when Orcs appear

