class AddUserDeviseToHumanCapital < ActiveRecord::Migration[5.1]
  def change
    add_reference :human_capitals, :user_devise, foreign_key: true
  end
end
