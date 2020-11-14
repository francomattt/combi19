class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :name
      t.date :deleted_at

      t.timestamps
    end
  end
end
