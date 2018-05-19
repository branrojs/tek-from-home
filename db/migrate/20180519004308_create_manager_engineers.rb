class CreateManagerEngineers < ActiveRecord::Migration
  def change
    create_table :manager_engineers do |t|
      t.integer :user_id
      t.integer :manager_id
    end
  end
end
