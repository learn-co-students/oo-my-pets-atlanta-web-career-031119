class Owner
  @@all=[]
  def initialize(name)
    @name=name
    @species="human"
    @pets={fishes:[], cats:[], dogs:[]}
    @@all<<self
  end
  attr_accessor :name, :pets
  attr_reader :species
  def self.all
    @@all
  end
  def self.count
    @@all.length
  end
  def self.reset_all
    @@all=[]
  end
  def say_species
    "I am a #{@species}."
  end
  def buy_fish(name)
    new_fish=Fish.new(name)
    new_fish.owner=self
    self.pets[:fishes]<<new_fish
  end
  def buy_cat(name)
    new_cat=Cat.new(name)
    new_cat.owner=self
    self.pets[:fishes]<<new_cat
  end
end