
class FunnyBots

    attr_accessor :name, :quotes

    @@bots = []

    def initialize(name, quotes)
      @name = name
      @quotes = quotes
      @@bots << self
    end

   def random_quote
      #self.quotes.sample
      @quotes.sample
    end

    def self.bots
      @@bots
    end

end

  archer = FunnyBots.new("Archer", ["Danger Zone!", "Read a book", "The cumulative hangover would literally kill me"] )
  archer2 = FunnyBots.new("Archer2", ["Danger Zone!2", "Read a book2", "The cumulative hangover would literally kill me2"] )


# A. What is self in this line @@bots << self ?
#   - instance of a FunnyBots
# B. What is self in this line self.quotes.sample?
#   - instance of a FunnyBots
# C. What kind of method is this & what is self? def self.bots @@bots end
#  - class method; self is the class
# D. Will this work archer.bots? If not, why?
#   - nope; archer is an instance of FunnyBots, not a class. .bots is a class method.


class Bicycle

  attr_reader :tire, :gears
  attr_accessor :tire_size

  # below is what :tire_size attr_accessor is doing:
    # def tire_size=(tire_size)
    #   @tire_size = tire_size
    # end
    # def tire_size
    #   @tire_size
    # end

  @@bikes = []
  @@styles = []
    def initialize(tire, gears, style)
      @tire = tire
      @gears = gears
      @style = style
      @@bikes << self
      @@styles << @style
    end

    def tire_size
      self.tire
    end

    # below are class variables, because it references 'self'
    def self.style
      @@styles
    end

    def self.bikes
      @@bikes
    end

end

mongoose = Bicycle.new(4, 10, "BMX")
mongoose2 = Bicycle.new(42, 102, "BMX2")


# For what reasons will the following method calls fail :
mongoose.tire_size = 5

, mongoose.gears, Bicycle.bikes, Bicycle.style ? Restructure the class to fix the issues.


