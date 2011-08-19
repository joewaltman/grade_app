
#id               :integer
#name             :string
#email            :string
#dob              :date
#created_at       :datetime
#updated_at         :datetime
#encrypted_password :string

class User < ActiveRecord::Base
  attr_accessor   :password
  attr_accessible :name, :email, :dob, :password, :password_confirmation
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name,      :presence => true, 
                        :length => { :maximum => 50 }
  validates :email,     :presence => true, 
                        :format => { :with => email_regex }, 
                        :uniqueness => {:case_sensitive => false}
  validates :password,  :presence => true,
                        :confirmation => true,
                        :length => { :within => 6..40 }
  
                      
end
