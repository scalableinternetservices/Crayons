class Photo < ApplicationRecord

  #refers to several tables and referred by
  has_and_belongs_to_many :annotations

  #validations
  validates_presence_of :title
  
  mount_uploader :image, ImageUploader
  


  
end
