class User < ActiveRecord::Base
  before_save   :downcase_username, :downcase_password
  validates :username,  presence: true, length: { maximum: 20 }
  validates :password,  presence: true, length: { maximum: 20 }
  
  private
  
    # Converts email to all lower-case.
    def downcase_username
      self.username = username.downcase
    end
    
    def downcase_password
      self.password = password.downcase
    end
    
  
end
