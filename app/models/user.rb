class User < ApplicationRecord
  has_one :cart 
  has_many :reviews

  has_secure_password 
  validates :email, :password, :first_name, :last_name, presence: true 
  validates :email, uniqueness: true 
  validates :password, length: { minimum: 8 }


end
