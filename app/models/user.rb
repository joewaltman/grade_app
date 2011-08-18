
#id         :integer
#name       :string
#email      :string
#dob        :date
#created_at :datetime
#updated_at :datetime

class User < ActiveRecord::Base
  attr_accessible :name, :email, :dob
end
