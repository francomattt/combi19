class Site < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  scope :availables, -> { where(deleted_at: nil) }
  def name=(s)
    s.nil? ? super(s) : super(s.capitalize)
  end

  def to_s
    name
  end
  
end
