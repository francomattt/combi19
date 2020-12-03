class CreateCreditCard2s < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_card2s do |t|
      t.string :name
      t.integer :last_name
      t.integer :number
      t.integer :cvc

      t.timestamps
    end
  end
end
