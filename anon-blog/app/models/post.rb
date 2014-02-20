class Post < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true
  has_many :tags, through: :post_tag
  # Remember to create a migration!
end
