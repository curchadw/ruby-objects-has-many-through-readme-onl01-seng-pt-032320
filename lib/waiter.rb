class Waiter
  attr_accessor :name, :yrs_experience

  @@all = Array.new

  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end

  def new_meal(customer, total, tip=0) #Creating the Has-Many-Through relationship
    Meal.new(self, customer, total, tip)
  end

  def self.all
    @@all
  end
end
