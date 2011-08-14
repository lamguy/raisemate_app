class User < ActiveRecord::Base
  
  attr_accessor :user_password
  
  before_save :encrypt_password
  
  validates :user_login, :presence => true,
                         :uniqueness => true
  
  validates :user_email, :presence => true,
                         :uniqueness => true
                         
  validates :user_password, :presence => true,
                            :confirmation => true,
                            :length => {:within => 6..40},
                            :on => :create
                            
  validates :user_password, :presence => true,
                            :confirmation => true,
                            :length => {:within => 6..40},
                            :allow_blank => true,
                            :on => :update
                            
                            
  def encrypt_password
    if user_password.present?
      self.user_password_salt = BCrypt::Engine.generate_salt
      self.user_password_hash = BCrypt::Engine.hash_secret(user_password, user_password_salt)      
    end    
  end
                        
end
