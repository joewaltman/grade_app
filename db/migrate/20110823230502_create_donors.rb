class CreateDonors < ActiveRecord::Migration
  def self.up
    create_table :donors do |t|
      t.string :name
      t.string :email
      t.integer :user_id

      t.timestamps
    end
    add_index :donors, :user_id
    
  end

  def self.down
    drop_table :donors
  end
end
