class ProfileController < ApplicationController
  def show
    @user = User.finf(params(:id))
  end
end
