class Way < ApplicationRecord
	validates :description, presence: true
	validates :start, presence: true
	validates :end_way, presence: true
	validates :start, uniqueness: { scope: [:start, :end_way] }
	scope :availables, -> { where(deleted_at: nil) }
	
validate :no_ciclico

def no_ciclico
  errors.add(:start, "El origen debe ser distinto del final de la ruta") if start == end_way
end

  def formatted_name
  #e = Site.select("sites.*, name as name" ).where(id=1)
  #e = Site.select("sites.*" ).where(id>0)
  #e.each do  |c|  
  c=Site.find(end_way)        
  e=Site.find(start)
     "#{description} | #{e.name} | #{c.name}  "
  #  end
  end
end
