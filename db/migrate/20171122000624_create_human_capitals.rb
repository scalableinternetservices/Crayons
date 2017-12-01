class CreateHumanCapitals < ActiveRecord::Migration[5.1]
  def change
    create_table :human_capitals do |t|
      t.integer :total
      t.integer :captcha_score
      t.integer :number_of_images_uploaded
      t.integer :number_of_images_downloaded
      t.integer :number_of_labels_made
      t.integer :membership_length

      t.timestamps
    end
  end
end
