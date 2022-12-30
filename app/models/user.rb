class User < ApplicationRecord  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password # Validates password presence for us.
end
