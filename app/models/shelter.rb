class Shelter < ApplicationRecord
  has_many :animals, dependent: :destroy
  validates :name, presence: true
  validates :location, presence: true
  scope :name_search, -> (name_search_parameter) { where("name like ?", "%#{name_search_parameter}%")}
  scope :location_search, -> (location_search_parameter) { where("location like ?", "%#{location_search_parameter}%")}
  scope :breed_search, -> (breed_search_parameter) {where("breed like ?", "%#{breed_search_paramter}%")}
end
