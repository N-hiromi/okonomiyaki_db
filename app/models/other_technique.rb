class OtherTechnique < ApplicationRecord
  belongs_to :user
  belongs_to :techniqueCategory, optional: true
  has_one_attached :image
  has_many :comments, as: :commentable
end
