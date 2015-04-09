class Post < ActiveRecord::Base
  belongs_to :user
  has_many :likings
  has_many :likers, through: :likings, source: :user
  has_attached_file :image
#  validates_attachment_content_type :asset, content_type:/\Aimage\/.*\Z/
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
