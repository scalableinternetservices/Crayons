class ProfilesController < ApplicationController

  def photo_cache
    Rails.cache.fetch("#{cache_key}/photo", expires_in: 60.min) do
      Photo.where( :user_devises_id => current_user_devise.id )
    end
  end

  def show
    @profile = UserDevise.find(params[:id])
    @photos = Photo.where( :user_devises_id => current_user_devise.id )

    @my_human_capital = (@profile.number_of_images_uploaded) + (@profile.number_of_images_downloaded) + (@profile.number_of_labels_made) + (@profile.number_of_upvotes) + (@profile.number_of_downvotes) + (2 * @profile.number_of_upvotes_on_tag) - (2 * @profile.number_of_downvotes_on_tag)
    @profile.update_column(:human_capital,  @my_human_capital)
  end


end
