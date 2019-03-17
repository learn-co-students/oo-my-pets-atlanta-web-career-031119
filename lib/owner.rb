require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all_owners = []
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats =>[]}
    @@all_owners << self

  end

  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.count
  end

  def self.reset_all
    @@all_owners.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def walk_dogs
    @pets[:dogs].each do |name|
      name.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |name|
      name.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |name|
      name.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, name|
      name.each do |x|
        x.mood = "nervous"
      end
      name.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
