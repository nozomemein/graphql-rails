class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :links, dependent: :destroy
  has_many :votes, dependent: :destroy
end
