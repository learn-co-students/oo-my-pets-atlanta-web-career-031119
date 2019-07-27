require 'pry'

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
    self.pets[:cats]<<new_cat
  end

  def buy_dog(name)
    new_dog=Dog.new(name)
    new_dog.owner=self
    self.pets[:dogs]<<new_dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood='happy'
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood='happy'
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood='happy'
    end
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood='nervous'
      end
    end
    self.pets={}
  end

  def list_pets
    dogs=self.pets[:dogs]
    cats=self.pets[:cats]
    fish=self.pets[:fishes]
    "I have #{fish.length} fish, #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end
end