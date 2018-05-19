class ManagerEngineer < ActiveRecord::Base
  belongs_to :user
  belongs_to :manager
end