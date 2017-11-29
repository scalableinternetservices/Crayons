class AnnotationsController < ApplicationController

  def update
    @annotation = Annotation.find_by(annotation_params[:annotation])
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

  def create # same method as "update", really
    @annotation = Annotation.create(annotation_params[:annotation])

    if @annotation.save
      #if annotation successfully created
      redirect_to photos_path , notice: "You tagged a photo"
    else
      render action: "new"
      # what does this statement do?
    end

  end

  def index
    @annotations = Annotations.order('created_at')

    # by default renders "index.html.erb" unless this behavior is overridden (like in update)
  end

  def new
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
