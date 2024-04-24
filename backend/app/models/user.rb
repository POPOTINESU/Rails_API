class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :emai, presence: true, uniqueness: true
  validates :password_digest, presence:true, length: {minimum:8}

end
