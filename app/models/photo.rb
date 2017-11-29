class Photo < ApplicationRecord
  #Mounts paperclip image
  has_attached_file :image
  has_and_belongs_to_many :annotations

  #refers to several tables and referred by


   #This validates the type of file uploaded. According to this, only images are allowed.

end
