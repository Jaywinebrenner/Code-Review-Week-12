FactoryBot.define do
  factory :item do
    name { "MyString" }
    description { "MyText" }
  end

  factory :user do
    name { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
  end


  factory(:shelter) do
    name { Faker::GreekPhilosophers.name }
    location { Faker::Address.country }
  end

  factory(:animal) do
    breed { Faker::Creature::Animal.name }
  end

end
