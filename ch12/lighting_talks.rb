# The Book of Ruby - http://www.sapphiresteel.com
# Module class is the immediate ancestor of the Class class.
# Just like a class, a module can contain con- stants, methods and classes
# But can't be initialized instances from a Module

module MyModule
  GOODMOOD = "happy"
  GOODMOODNOT = "Super Angry"

  def greet
    return "I'm #{GOODMOOD}. How are you?"
  end

  def MyModule.bad_mood # One way to call module methods
     "I'm #{BADMOOD}. How are you? " + im_another_private_method
  end

  def self.im_another_private_method # Another way to call module methods
    "Im top Secret 101"
  end

  def im_tying_to_be_a_private_method
    "Im second top Secret 201"
  end

  def expression
    return "smiling"
  end
  alias happyexpression expression

  # ----------ERROR---------
  # private_class_method :im_tying_to_be_a_private_method  # undefined method `im_tying_to_be_a_private_method'
  # ----------ERROR---------

  private_class_method :im_another_private_method
end

module MySecondModule
  GOODMOODNOT = "Angry"

  def self.angry_mood
    "Ok I'm not that #{GOODMOODNOT}, I kid!"
  end

  def expression
    return "frowning"
  end

  private_class_method :angry_mood
end


class Greetings
  include MySecondModule
end
puts ( Greetings.new.expression ) # frowning
puts( Greetings.new.angry_mood ) # undefined method `angry_mood' for


# puts ( Greetings.very_bad2 )
# puts ( Greetings.new.very_bad )

#
# puts("1  MyModule::GOODMOOD")
# puts(MyModule::GOODMOOD) # "happy"
#
# puts( "2  MyModule.bad_mood" )
#
# # ----------ERROR---------
# # puts( MyModule.im_another_private_method)
# # ----------ERROR---------
#
#
# include MyModule
# include MySecondModule
# puts( "3  MyModule.good_mood" )
# puts( good_mood ) # I'm happy. How are you?
#
# puts( "4  MyModule.bad_mood And MyModule.im_another_private_method" )
# puts( MyModule.bad_mood ) # I'm grumpy. How are you? Im top Secret 101
#
# g = Greetings.new
#
# puts( "5  Greetings.new.good_mood" )
# puts( g.good_mood )  # I'm happy. How are you?
#
# puts( "6
# ----------ERROR---------
# puts( Greetings.new.bad_mood ) # NoMethodError
#              #why
#  Beacuse its a module methods only used through the module
# ----------ERROR---------"
# )
#
# puts ("7---Over riding name conflicts--")
# puts ("MyModule.angry_mood")
# # puts(MyModule.angry_mood) # NO i'm getting overridden
# puts ("MyModule.angry_mood => Ok I'm not that Angry, I kid! # NO i'm getting overridden")
# puts ("MySecondModule.angry_mood => Ok I'm not that Angry, I kid!")
# # puts(MySecondModule.angry_mood)
#
# puts("Greetings.new.angry_mood => Ok I'm not that Angry, I kid! # NO i'm getting overridden too")
# # puts( g.angry_mood )
# puts( g.happyexpression)
# puts( g.expression + " I got overridden with the second definition of expression")
# puts( g.sadexpression)
