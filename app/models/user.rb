class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :cases
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@tek-experts.com+\z/
  validates :email, format: { with: VALID_EMAIL_REGEX }
end
