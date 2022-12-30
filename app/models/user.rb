class User < ApplicationRecord  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 8 }
  has_secure_password # Validates password presence & confirmation for us.

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email)
    if (user && user.authenticate(password))
      user
    end
  end
end
