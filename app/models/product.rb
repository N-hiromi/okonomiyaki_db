class Product < ApplicationRecord
  belongs_to :user
  has_many :productMaterials
  has_many :productTechniques
  has_many :productPerformances
  has_one_attached :image
  has_many :comments, as: :commentable
end
