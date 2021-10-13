class Seasoning < ApplicationRecord
  belongs_to :user
  belongs_to :materialCategory, optional: true
  has_one_attached :image
  has_many :comments, as: :commentable
  validates :name, presence: true
  validates :cost, presence: true
  validates :warning, presence: true
end
