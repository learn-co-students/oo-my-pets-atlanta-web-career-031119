require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@all << self
  end

  def species(species = "human")
    @species = species
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    self.pets[:fishes] << fish
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    self.pets[:dogs] << dog
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    self.pets[:cats] << cat
  end

  def walk_dogs
    for n in 0...self.pets[:dogs].size
      self.pets[:dogs][n].mood = "happy"
    end
  end

  def play_with_cats
    for n in 0...self.pets[:cats].size
      self.pets[:cats][n].mood = "happy"
    end
  end

  def feed_fish
    for n in 0...self.pets[:fishes].size
      self.pets[:fishes][n].mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |key, value|
      value.each do |oof|
        oof.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    count = {}
    self.pets.each do |key, value|
      count[key] = value.size
    end
    "I have #{count[:fishes]} fish, #{count[:dogs]} dog(s), and #{count[:cats]} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

end
