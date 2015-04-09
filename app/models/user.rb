class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :likings
  has_many :liked_photos, through: :likings, source: :post 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
