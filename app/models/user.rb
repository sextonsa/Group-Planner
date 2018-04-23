class User < ActiveRecord::Base
  has_secure_password
  has_many :groups, dependent: :destroy
  has_many :members, dependent: :destroy
  has_many :memberships, through: :members, source: :group


  regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, uniqueness: { case_sensitive: false}, format: { with: regex }
  validates :first_name, :last_name, :email, presence: true
end
