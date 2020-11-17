class AddCreditCardIdToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :credit_card_id, :integer
  end
end
