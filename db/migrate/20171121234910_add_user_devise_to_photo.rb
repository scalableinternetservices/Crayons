class AddUserDeviseToPhoto < ActiveRecord::Migration[5.1]
  def change
    add_reference :photos, :user_devise, foreign_key: true
  end
end
