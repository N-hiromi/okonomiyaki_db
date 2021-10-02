class Liquid < ApplicationRecord
  belongs_to :user
  belongs_to :materialCategory
  has_one_attached :image
  has_many :comments, as: :commentable
end
