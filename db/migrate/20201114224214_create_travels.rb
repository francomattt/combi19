class CreateTravels < ActiveRecord::Migration[6.0]
  def change
    create_table :travels do |t|
      t.date :travel_day
      t.time :travel_hour
      t.integer :combi_id
      t.integer :way_id
      t.integer :state_id
      t.date :deleted_at
      t.timestamps
    end
  end
end
