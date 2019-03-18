class Dog
  
  # code goes here
  attr_accessor :mood
  attr_reader :name 
  def initialize(name = "Dog")
    @name = name 
    @mood = "nervous"
end 
 
 
    






end

# let(:dog) { Dog.new("Daisy") }

#   it "can initialize a dog" do
#     expect(dog).to be_a(Dog)
#   end

#   it "initializes with a name" do
#     expect(dog.name).to eq("Daisy")
#   end

#   it "can't change its name" do
#     expect { dog.name = "Fido" }.to raise_error NoMethodError
#   end

#   it "initializes with a nervous mood" do
#     expect(dog.mood).to eq("nervous")
#   end

#   it "can change its mood" do
#     dog.mood = "hungry"
#     expect(dog.mood).to eq("hungry")
#   end

# end
