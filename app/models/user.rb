class User < ActiveRecord::Base
  has_secure_password

 

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
  validates :password, presence: { on: create }, length: {minimum: 8}
  validates :password_confirmation, presence: true

  before_validation :downcase_email

  validates_presence_of :email, :password

  def downcase_email
    self.email = self.email.downcase.strip
  end
  
  def self.authenticate_with_credentials(email, password)
    user = self.find_by_email(email.downcase.strip)
    if user && user.authenticate(password)
      return user
    end
    return nil
  end
  
end
