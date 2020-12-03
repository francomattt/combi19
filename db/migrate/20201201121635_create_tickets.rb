class CreateTickets < ActiveRecord::Migration[6.0]
  
  def change
    create_table :tickets do |t|
      t.double :price
      t.date :created
      t.integer :ticket_id
      t.integer :user_id
      t.timestamps
    end
  end
end
