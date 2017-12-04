class AddUserDeviseToAnnotation < ActiveRecord::Migration[5.1]
  def change
    add_reference :annotations, :user_devises, index: true, foreign_key: true
  end
end
