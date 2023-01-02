class User < ApplicationRecord  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 8 }
  has_secure_password # Validates password presence & confirmation for us.

  def self.authenticate_with_credentials(email, password)
    if !email || !password
      return
    end

    user = User.find_by_email(email.strip.downcase)
    
    if (user && user.authenticate(password))
      user
    end
  end
end
