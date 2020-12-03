class AddColumToTicket < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :travel_id, :integer
  end
end
