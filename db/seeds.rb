class Seed

  def self.begin

    @seed = Seed.new
    @seed.generate_shelters
  end

  def generate_shelters
    20.times do |i|
      shelter = Shelter.create!(
        name: Faker::GreekPhilosophers.name,
        location: Faker::Address.city
      )
      5.times do |i|
        type = Faker::Creature::Animal.name
        animal = Animal.create!(shelter_id: shelter.id, type: type)
      puts "Shelter #{i}: Name is #{shelter.name} and location is '#{shelter.location}'."
      p "created #{Animal.count} Animals"
    end
  end
end
end
Seed.begin
