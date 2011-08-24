require 'spec_helper'

describe Donor do
  
  before(:each) do
    @user = Factory(:user)
    @attr = {:name => "John Smith", :email => "john@example.com" }
  end
  
  it "should create a new instance with valid attributes" do
    @user.donors.create!(@attr)
  end
  
  describe "user associations" do
    
    before(:each) do
      @donor = @user.donors.create(@attr)
    end
    
    it "should have a user attribute" do
      @donor.should respond_to(:user)
    end
    
    it "should have the right associated user" do
      @donor.user_id.should == @user.id
      @donor.user.should == @user
    end
  end
  
end
