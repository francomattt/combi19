class Combi < ApplicationRecord

	validates :registration_plate, presence: true, uniqueness: true
	validates :cap, presence: true
	validates :model, presence: true
 	enum bus_type: [ :cómoda, :super_cómoda ]
	#validates :user, presence: true, uniqueness: true
	
	scope :availables, -> { where(deleted_at: nil) }
   		default_scope  -> { order('registration_plate asc') }
   	belongs_to  :user
	



	


end
