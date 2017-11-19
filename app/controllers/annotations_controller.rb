class AnnotationsController < ApplicationController
  
  def create
    #@annotation = Annotation.find_or_create_by(annotation_params)
  end
  
  def index
   @annotation = Annotation.all
  end
  
  def new
    @annotation = Annotation.new
  end
  
  def annotation_params
    params.require(:annotation).permit(:label)
  end
  
  def show
  end
  
end
