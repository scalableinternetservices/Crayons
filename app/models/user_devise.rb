class UserDevise < ActiveRecord::Base
  has_many :photos
  has_many :annotations
  has_one :human_capital
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
