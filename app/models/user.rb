class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [ :passenger, :driver, :admin ]
  scope :availables, -> { where(deleted_at: nil) }
  #has_one:combi
           

  
  scope :choferes, -> { where(role: 'driver') }
  def formatted_name
     "#{last_name} | #{name}"
  end
  validates :dni, presence: true
  validates :dni, uniqueness: true
  validate :validate_age
  private
  def validate_age
     if birth_date.present? && birth_date.to_date > 18.years.ago.to_date
      errors.add(:birth_date, 'Usted debe ser mayor de edad.') 
    end
  end
end
