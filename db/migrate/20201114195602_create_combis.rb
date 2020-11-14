class CreateCombis < ActiveRecord::Migration[6.0]
  def change
    create_table :combis do |t|
      t.string :registration_plate
      t.integer :cap
      t.integer :model
      t.string :bus_type
      t.integer :user_id
	
      t.timestamps
    end
  end
end
