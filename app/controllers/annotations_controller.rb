class AnnotationsController < ApplicationController

  def update
    @annotation = Annotation.find_or_create_by(annotation_params[:annotation])
    @annotation.label = annotation_params[:label]
    if @annotation.save
      #if annotation successfully created
      redirect_to photos_path , notice: "You tagged a photo"
    else
      render action: "new"
    end
    #flash[:notice] = "You tagged this photo!"
    #redirect_to photo_path
  end
  
  def create # this adds the record to the database
    @annotation = Annotation.find_or_create_by(annotation_params)
    Photo.find(params["annotation"]["photo_id"]).annotations << @annotation
    redirect_to photos_path
    
  end

  def index
    @annotations = Annotations.order('created_at')
    
    # by default renders "index.html.erb" unless this behavior is overridden (like in update)
  end

  def upvote
    @annotation = Annotation.find_by(annotation_params)
    @annotation.upvotes += 1
    if @annotation.save
      #if annotation successfully created
      redirect_to photos_path , notice: "You upvoted this tag"
    end

  end

  def downvote
    @annotation = Annotation.find_by(annotation_params)
    @annotation.downvotes += 1

    if @annotation.save
      #if annotation successfully created
      redirect_to photos_path , notice: "You downvoted this tag"
    end
  end

  def new #this just creates the object, doesn't necessarily add it to the database
    binding.pry
    @annotation = Annotation.new(annotation_params)
    # by default renders "new.html.erb" unless this behavior is overridden (like in update)
  end

  def show
    @annotations = Annotation.find(params[:id])
  end

  private

  #Permitted parameters when creating an annotation. This is used for security reasons.
  def annotation_params
    params.require(:annotation).permit(:label)
  end

end
