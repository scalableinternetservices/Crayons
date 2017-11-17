class AddAttachmentToImages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :images do |t|
      t.string :name
      t.text :description
      t.string :image
      t.timestamps :time
    end
  end

  def self.down
    remove_attachment :images, :name, :description, :image, :time
  end
end
