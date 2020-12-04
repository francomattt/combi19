class UpdateCreditCardInformation < ActiveRecord::Migration[6.0]
  def change
  	    change_column :credit_card2s, :last_name, :string
  end
end
