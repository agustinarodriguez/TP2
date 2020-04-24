class Car < ApplicationRecord
	belongs_to :brand
	belongs_to :classification
	belongs_to :structure
	has_and_belongs_to_many :accessories
	validates :doors, :year, numericality: true
	validates :color, :model, :brand_id, presence: :true
end
