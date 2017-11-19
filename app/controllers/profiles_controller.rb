class ProfilesController < ApplicationController
  def show
    @profile = UserDevises.find(params[:id])
  end
end
