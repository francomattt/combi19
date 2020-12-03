class VariablesTicket < ActiveRecord::Migration[6.0]
  def change
  	add_column :tickets, :deleted_at, :date
  	add_column :tickets, :price, :double
  	add_column :tickets, :user_id, :integer
  end
end
