class CreateHumanCapitols < ActiveRecord::Migration[5.1]
  def change
    create_table :human_capitols do |t|
      t.integer :total, default: 0, null: false
      t.integer :captcha_score, default: 0, null: false
      t.integer :number_of_images_uploaded, default: 0, null: false
      t.integer :number_of_images_downloaded, default: 0, null: false
      t.integer :number_of_labels_made, default: 0, null: false
      t.integer :membership_length, default: 0, null: false
    end
  end
end
