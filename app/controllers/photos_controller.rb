class PhotosController < ApplicationController

#Index action, photos gets listed in the order at which they were created
 def index
  @photos = Photo.order('created_at')
 end

 #New action for creating a new photo object with blank parameters?
 def new
  @photo = Photo.new
 end

 #Create action ensures that submitted photo gets created if it meets the requirements
 def create
  @photo = Photo.new(photo_params)

  if @photo.save
   flash[:notice] = "Successfully added new photo!"
   redirect_to photos_path
  else
   flash[:alert] = "Error adding new photo!"
   render :new # this says to render the "new.html.erb" page - to stay on the new photo page so user can try again.
  end
 end

 #Destroy action for deleting an already uploaded image
 def destroy
 @photo = Photo.find(params[:id])
   if @photo.destroy
     flash[:notice] = "Successfully deleted photo!"
     redirect_to photos_path
   else
     flash[:alert] = "Error deleting photo!"
   end
 end

 private

 #Permitted parameters when creating a photo. This is used for security reasons.
 def photo_params
  params.require(:photo).permit(:title, :url)
 end

end
