class User < ApplicationRecord  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 8 }
  has_secure_password # Validates password presence for us.
end
