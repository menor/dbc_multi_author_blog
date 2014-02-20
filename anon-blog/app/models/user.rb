class User < ActiveRecord::Base
  attr_accessor :new_password
  has_many :posts, inverse_of: :user
  validates :name, :email, :hashed_password, presence: true


  # before_create :hash_password

  # private

  # def hash_password
  #   self.hashed_password = BCrypt::Password.create(new_password)
  # end
end
