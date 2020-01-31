FactoryBot.define do

  factory(:shelter) do
    name { Faker::GreekPhilosophers.name }
    location { Faker::Address.country }
  end

  factory(:animal) do
    breed { Faker::Creature::Animal.name }
  end

end
