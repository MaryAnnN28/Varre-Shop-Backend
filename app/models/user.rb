class User < ApplicationRecord
  has_one :cart 
  has_many :reviews

  has_secure_password 
  validates :email, uniqueness: { case_sensitive: false }

end
