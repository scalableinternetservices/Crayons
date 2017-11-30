class Annotation < ApplicationRecord

  #refers to several tables and referred by
  has_and_belongs_to_many :photos
  
end
