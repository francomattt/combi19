class Travel < ApplicationRecord
validates :travel_day, uniqueness: { scope: [:travel_day, :travel_hour, :way_id] }

belongs_to :combi
	belongs_to :way
	validates :travel_hour, presence: true
	validates :travel_day, presence: true

end
