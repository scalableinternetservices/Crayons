class AnnotationController < ApplicationController
  def new
    @annotation = Annotation.new
  end
end
