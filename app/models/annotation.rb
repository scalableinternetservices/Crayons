class Annotation
  # this class created following example_user.rb tutorial in RailsTutorial book
  attr_accessor :label
  
  def initialize(attributes = {})
    @label = attributes[:label]
  end
  
  def show
    "#{@label}"
  end
  
end