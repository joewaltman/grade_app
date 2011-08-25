class Donor < ActiveRecord::Base
  attr_accessible :email, :name
  
  belongs_to :user
  
  validates :email, :presence => true, :length => { :maximum => 50 }
  validates :user_id, :presence => true
  validates :name, :presence => true
  default_scope :order => 'donors.created_at DESC'
  
end
