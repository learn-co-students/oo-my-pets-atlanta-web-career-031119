class Owner
  @@all=[]
  def initialize
    @pets={fishes:[], cats:[], dogs:[]}
    @@all<<self
  end
  attr_accessor :name
  def self.all
    @@all
  end
  def self.count
    @@all.length
  end
  def self.reset_all
    @@all=[]
  end
end