class AddProfileFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :dni, :integer
    add_index :users, :dni, unique: true
    add_column :users, :birth_date, :date
    add_column :users, :suscribed, :boolean
  end
end
