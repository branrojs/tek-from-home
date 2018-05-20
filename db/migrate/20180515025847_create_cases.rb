class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :public_id
      t.string :status_id
      t.text :action_plan

      t.timestamps null: false
    end
  end
end
