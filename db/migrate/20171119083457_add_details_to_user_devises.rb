class AddDetailsToUserDevises < ActiveRecord::Migration[5.1]
  def change
    #add_column :user_devises, :firstname, :string, null: false
    #add_column :user_devises, :lastname, :string, null: false
    #add_column :user_devises, :number_of_images_uploaded, :integer, default:0, null:false
    #add_column :user_devises, :number_of_images_downloaded, :integer, default:0, null:false
    #add_column :user_devises, :human_capital, :integer, default:0, null: false
    add_column :user_devises, :number_of_labels_made, :integer, default:0, null: false
    add_column :user_devises, :gender, :string, default:""
    add_column :user_devises, :birthday, :date
    add_column :user_devises, :country, :string, default:""
    add_column :user_devises, :number_of_upvotes, :integer, default:0
    add_column :user_devises, :number_of_downvotes, :integer, default:0
    add_column :user_devises, :number_of_upvotes_on_tag, :integer, default:0
    add_column :user_devises, :number_of_downvotes_on_tag, :integer, default:0

    
  end

end
