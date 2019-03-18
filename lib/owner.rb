require_relative "../config/environment.rb"
require_relative "./cat.rb"
require_relative "./dog.rb"
require_relative "./fish.rb"
require 'pry'

class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :specie

  @@all = []

  def initialize(name)
    @name = name
    @pets = { fishes: [], cats: [], dogs: []}
    @specie = "human"
    @@all << self
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats].push(cat)
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs].push(dog)
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes].push(fish)
  end
    
  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def species
    @specie
  end

  def say_species
    "I am a #{species}."
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.values.flatten.each do |pet|
      pet.mood = "nervous"
    end
    @pets.clear
  end

  def list_pets
    hash = {"fishes": 0, "dogs": 0, "cats": 0}
    @pets.each do |specie,pet|
      hash[specie] = @pets[specie].count
    end
    "I have #{hash[:fishes]} fish, #{hash[:dogs]} dog(s), and #{hash[:cats]} cat(s)."
  end
end