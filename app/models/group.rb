class Group < ActiveRecord::Base
  belongs_to :user, required: true

  has_many :members, dependent: :destroy
  has_many :memberships, through: :members, source: :user
  
  validates :name, :description, presence: true
  validates_length_of :name, :minimum=>5, :message=>"name must be longer than 5 characters"
  validates_length_of :description, :minimum=>10, :message=>"descriptions must be longer than 10 characters"
end
