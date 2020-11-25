class Way < ApplicationRecord
	validates :description, presence: true
	validates :start, presence: true
	validates :end_way, presence: true
	validates :start, uniqueness: { scope: [:start, :end_way, :description] }
	scope :availables, -> { where(deleted_at: nil) }
	
validate :no_ciclico

def no_ciclico
  errors.add(:start, "El origen debe ser distinto del final de la ruta") if start == end_way
end

  def formatted_name
     "#{description}"
  end
end
