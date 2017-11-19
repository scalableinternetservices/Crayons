class AddDetailsToUserDevises < ActiveRecord::Migration[5.1]
  def change
    add_column :user_devises, :firstname, :string, null: false
    add_column :user_devises, :lastname, :string, null: false
    add_column :user_devises, :number_of_images_uploaded, :integer, default:0, null:false
    add_column :user_devises, :number_of_images_downloaded, :integer, default:0, null:false
    add_column :user_devises, :human_capital, :integer, default:0, null: false
  end

end
