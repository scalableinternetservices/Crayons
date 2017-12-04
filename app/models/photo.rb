class Photo < ApplicationRecord
  #Mounts paperclip image
  has_attached_file :image
  has_and_belongs_to_many :annotations

  #refers to several tables and referred by
  

   #This validates the type of file uploaded. According to this, only images are allowed.
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    #Validates file, file type and file size
  validates_attachment :image, presence: true,
  content_type: { content_type: "image/png" },
  size: { in: 0..1000.kilobytes },


  :s3_region => 'us-west-2'

end
