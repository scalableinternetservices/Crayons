class ProfilesController < ApplicationController
  def show
    @profile = UserDevise.find(params[:id])
    puts "firstname!!! #{@profile.firstname}"
  end
end
