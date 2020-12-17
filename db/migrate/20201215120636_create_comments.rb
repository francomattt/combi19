class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.integer :score
      t.text :content
      t.integer :ticket_id
      t.timestamps
    end
  end
end