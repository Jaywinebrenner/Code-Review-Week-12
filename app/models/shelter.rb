class Shelter < ApplicationRecord
  has_many :animals, dependent: :destroy
  validates :name, presence: true
  validates :location, presence: true
  scope :name_search, -> (name_search_parameter) { where("name like ?", "%#{name_search_parameter}%")}
  scope :location_search, -> (location_search_parameter) { where("location like ?", "%#{location_search_parameter}%")}
  # scope :random_shelter, -> (random_parameter) {where("shelter like ?", "%#{random_paramter}%")}
  scope :random_shelter, -> (random_parameter) { order("RAND()", "%#{random_paramter}%").limit(1)}

  def self.random_shelter
    Shelter.order("RAND()").limit(1)
  end


end
