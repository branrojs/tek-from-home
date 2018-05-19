class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.integer :user_id
    end
  end
end
