class DeleteRoleToUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :role

  end
end