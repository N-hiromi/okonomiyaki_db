class Seasoning < ApplicationRecord
  belongs_to :user
  belongs_to :materialCategory, optional: true
  has_one_attached :image
  has_many :comments, as: :commentable
end
