class AddUserDeviseToPhoto < ActiveRecord::Migration[5.1]
  def change
    add_reference :photos, :user_devises, index: true, foreign_key: true
  end
end
