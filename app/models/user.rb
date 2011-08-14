class User < ActiveRecord::Base
  validates :user_login, :presence => true
  validates :user_name, :presence =>true
  validates :user_email, :presence => true
  validates :user_password, :presence => true,
                            :confirmation => true,
                            :length => {:within => 6..40},
                            :on => :create
  validates :user_password, :presence => true,
                            :confirmation => true,
                            :length => {:within => 6..40},
                            :allow_blank => true,
                            :on => :update
                        
end
