class DonorsController < ApplicationController
  
  def create
    @donor = current_user.donors.build(params[:donor])
    if @donor.save
      redirect_to root_path, :flash => { :success => "Donor added!"}
    else
      render 'pages/home'
    end
  end
  
  def destroy
  end
  
end