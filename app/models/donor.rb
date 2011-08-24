class Donor < ActiveRecord::Base
  attr_accessible :email, :name
  
  belongs_to :user
  
  default_scope :order => 'donors.created_at DESC'
  
end
