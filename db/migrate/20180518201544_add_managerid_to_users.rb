class AddManageridToUsers < ActiveRecord::Migration
  def change
    add_column :users, :manager_id, :string
  end
end
