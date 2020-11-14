class CreateWays < ActiveRecord::Migration[6.0]
  def change
    create_table :ways do |t|
      t.string :description
      t.integer :start
      t.integer :end
      t.date :deleted_at

      t.timestamps
    end
  end
end
