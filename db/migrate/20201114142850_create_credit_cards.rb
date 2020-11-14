class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.string :owner
      t.integer :card_number
      t.date :expiration_date
      t.integer :security_number
      t.integer :user_id

      t.timestamps
    end
  end
end
