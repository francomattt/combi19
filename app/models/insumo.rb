class Insumo < ApplicationRecord


	validates :tipo, presence: true
	validates :cant, presence: true
	validates :price, presence: true
	
	scope :availables, -> { where(deleted_at: nil) }

   
	


	 def formatted_name
     		"#{tipo} - $ #{price}"

  	end
end
