class HumanCapital < ApplicationRecord
  belongs_to :user_devise_id, :class_name => 'UserDevise', :foreign_key => 'user_devise_id'
end
