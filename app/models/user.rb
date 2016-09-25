class User < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /\w{2,}[@]\w+[.]\w{2,3}/, message: "must be valid email" }
  
  has_secure_password
  has_many :links
end
