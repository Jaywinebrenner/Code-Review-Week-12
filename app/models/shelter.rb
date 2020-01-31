class Shelter < ApplicationRecord
  has_many :animals, dependent: :destroy
  validates :name, presence: true
  validates :location, presence: true
  scope :name_search, -> (search_parameter) { where("name like ?", "%#{search_parameter}%")}
  scope :location_search, -> (search_parameter) { where("location like ?", "%#{search_parameter}%")}
end
