class Tag < ActiveRecord::Base
  has_many :posts, through: :post_tag
  # Remember to create a migration!
end
