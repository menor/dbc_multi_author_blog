class Post < ActiveRecord::Base
  has_many :tags, through: :post_tag
  # Remember to create a migration!
end
