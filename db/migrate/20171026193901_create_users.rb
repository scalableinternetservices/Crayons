class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.integer :human_rating
      t.string :images_uploaded_id
      t.string :string

      t.timestamps
    end
  end
end
