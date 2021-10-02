class Cut < ApplicationRecord
  belongs_to :user
  belongs_to :techniqueCategory, optional: true
  has_many_attached :images
  has_many :comments, as: :commentable
end
