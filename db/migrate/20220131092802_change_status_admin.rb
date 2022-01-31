class ChangeStatusAdmin < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :admin, :boolean, default: true
  end
end
