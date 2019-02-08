class User < ApplicationRecord
  validates :email, :presence => true, :uniqueness => true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
  validates :password, :confirmation => true, :length => {:in => 6..20}
end