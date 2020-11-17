class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [ :passenger, :driver, :admin ]
  scope :availables, -> { where(deleted_at: nil) }
  has_one:combi
  scope :choferes, -> { where(role: 'driver') }
  def formatted_name
     "#{last_name} | #{name}"
  end

end
