class Travel < ApplicationRecord
validates :travel_day, uniqueness: { scope: [:travel_day, :travel_hour, :way_id] }

belongs_to :combi
	belongs_to :way
	validates :travel_hour, presence: true
	validates :travel_day, presence: true
	validates :price, presence: true
	
	def self.search(search)
		if (search != nil)
			loc = Site.find_by(name: search)
			way_id = Way.find_by(end_way: loc)
			if (way_id != nil) 

				self.where(way_id: way_id)
			else
				self.where(way_id: way_id)
			end
		
		else
			@travels = Travel.all
		end
		
	end
	
	scope :availables, -> { where(deleted_at: nil) }
	scope :finalizados, -> { where(state_id: 2) }
	scope :nofinalizados, -> { where("state_id != ?", 2) }
	
	def formatted_name
     		"#{travel_day.strftime('%d-%m-%Y')} a las #{travel_hour.strftime('%m:%H')}hs | valor del viaje: $#{price}."
  	end
	
	
	def selled_name
     		"#{travel_day.strftime('%d-%m-%Y')} a las #{travel_hour.strftime('%m:%H')}hs."
  	end	
  

end
