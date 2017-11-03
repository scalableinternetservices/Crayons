class CreateImageInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :image_infos do |t|
      t.integer :ID
      t.string :image_name
      t.integer :upvotes
      t.integer :downvotes

      t.timestamps
    end
  end
end
