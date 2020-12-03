class CreditCard2 < ApplicationRecord
	 #belongs_to :user
	 validates :number, presence: true, uniqueness: true
	 validates :cvc, presence: true, uniqueness: true

end
