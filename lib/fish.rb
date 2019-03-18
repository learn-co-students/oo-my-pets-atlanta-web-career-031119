class Fish
  # code goes here

  # code goes here
  attr_accessor :mood
  attr_reader :name 
  def initialize(name = "Fish")
    @name = name 
    @mood = "nervous"
end 
 
 
    





end

# let(:fish) { Fish.new("Nemo") }

#   it "can initialize a fish" do
#     expect(fish).to be_a(Fish)
#   end

#   it "initializes with a name" do
#     expect(fish.name).to eq("Nemo")
#   end

#   it "can't change its name" do
#     expect { fish.name = "Goldy" }.to raise_error NoMethodError
#   end

#   it "initializes with a nervous mood" do
#     expect(fish.mood).to eq("nervous")
#   end

#   it "can change its mood" do
#     fish.mood = "excited"
#     expect(fish.mood).to eq("excited")
#   end

# end
