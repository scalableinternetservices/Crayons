class ProfilesController < ApplicationController
  def show
    @profile = UserDevise.find(params[:id])
    @photos = Photo.order('created_at')

  end

end
