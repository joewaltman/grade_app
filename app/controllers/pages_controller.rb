class PagesController < ApplicationController
  def home
    @title = "Home"
    @donor = Donor.new if signed_in?
  end

  def about
    @title = "About"
  end

  def privacy
    @title = "Privacy"
  end

end
