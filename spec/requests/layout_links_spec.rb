require 'spec_helper'

describe "LayoutLinks" do
  
  it  "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end
  
  it "should have a Privacy page at '/privacy'" do
    get '/privacy'
    response.should have_selector('title', :content => "Privacy")
  end
  
  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end
  
  it "should have the right links on the layout" do
    visit root_path
    response.should have_selector('title', :content => "Home")
    click_link "About"
    response.should have_selector('title', :content => "About")
    click_link "Privacy"
    response.should have_selector('title', :content => "Privacy")
    click_link "Home"
    response.should have_selector('title', :content => "Home")
    click_link "Sign up Now!"
    response.should have_selector('title', :content => "Sign up")
    response.should have_selector('a[href="/"]>img')
  end
  
end
