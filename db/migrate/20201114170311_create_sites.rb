class CreateSites < ActiveRecord::Migration[6.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.date   :deleted_at

      t.timestamps
    end
  end
end
