class Manager < ActiveRecord::Base
  has_many :manager_engineers
  has_many :users, through: :manager_engineers
end