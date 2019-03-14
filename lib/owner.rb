require 'pry'
require_relative './fish'
class Owner
  
  attr_reader :species
  attr_accessor :name, :mood, :pets

  @@all = []

  def initialize(species)
      @species = species
      @pets = {fishes: [], dogs: [], cats: []}
      @@all<<self
  end

  def self.all
      @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
   "I am a " + self.species + "."
  end

  def buy_fish(new_fish)
     fish = Fish.new(new_fish)
     self.pets[:fishes]<<fish
  end

  def buy_cat(new_cat)
    cat = Cat.new(new_cat)
    self.pets[:cats]<<cat
  end

  def buy_dog(new_dog)
    dog = Dog.new(new_dog)
    self.pets[:dogs]<<dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood= 'happy'
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    self.pets.each do |species, pet|
      pet.each do |pet|
        pet.mood = 'nervous'
      end
    end
    self.pets.clear
  end

  def list_pets
    fish_num = (self.pets[:fishes].length).to_s
    dog_num = (self.pets[:dogs].length).to_s
    cat_num = (self.pets[:cats].length).to_s
    "I have " + fish_num + " fish, " + dog_num + " dog(s), and " + cat_num + " cat(s)."
  end

end