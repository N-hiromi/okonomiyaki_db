class Bake < ApplicationRecord
  belongs_to :user
  belongs_to :techniqueCategory
  has_many_attached :image
  has_many :comments, as: :commentable
end
