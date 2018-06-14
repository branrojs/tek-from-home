class Case < ActiveRecord::Base
  belongs_to :user
  validates :public_id, uniqueness: true
end
