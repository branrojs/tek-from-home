class AddManagermailToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :manager_email, :string
  end
end
