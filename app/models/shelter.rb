class Shelter < ApplicationRecord
  has_many :animals, dependent: :destroy
end
