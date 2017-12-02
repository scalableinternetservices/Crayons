class ProfilesController < ApplicationController
  def show
    @profile = UserDevise.find(params[:id])



  end

end
