class Ticket < ApplicationRecord
	belongs_to :user
	validates :price, presence: true
	validates :travel_id, presence: true
	validates :user_id, presence: true
	


end
