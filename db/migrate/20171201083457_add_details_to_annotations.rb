class AddDetailsToAnnotations < ActiveRecord::Migration[5.1]
  def change
    add_column :annotations, :upvotes, :integer, default:0, null: false
    add_column :annotations, :downvotes, :integer, default:0, null: false
    
  end

end
