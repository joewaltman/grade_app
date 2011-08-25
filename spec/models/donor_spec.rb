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
  
  describe "validations" do
    it "should have a user id" do
      Donor.new(@attr).should_not be_valid
    end
    
    it "should require nonblank content" do
      @user.donors.build(:name => "", :email => "").should_not be_valid
    end
    
    it "should reject long emails" do
      @user.donors.build(:email => "a" * 51).should_not be_valid
    end
  end
  
end
