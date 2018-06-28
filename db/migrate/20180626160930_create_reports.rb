class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.timestamps :created_at
      t.timestamps :updated_at
      t.string :date
      t.references :user, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
      t.boolean :read, default: false

      t.timestamps null: false
    end
  end
end
