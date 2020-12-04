class CreditCard2 < ApplicationRecord
	 #belongs_to :user
	 validates :number, presence: true, uniqueness: true
	 validates :cvc, presence: true, uniqueness: true
	 
	 def last_digits(number)    
		number.to_s.length <= 4 ? number : number.to_s.slice(-4..-1) 
	  end
	  
	  def mask(number)
	   "XXXX-XXXX-XXXX-#{last_digits(number)}"
	  end

end
