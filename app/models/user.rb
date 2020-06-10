class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :answers
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :authentication_keys => [:username]
  validates :username, uniqueness: true
end
