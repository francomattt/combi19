class AddColumToCreditCard2 < ActiveRecord::Migration[6.0]
  def change
    add_column :credit_card2s, :user_id, :integer

  end
end
