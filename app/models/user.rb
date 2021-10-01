class User < ApplicationRecord
  has_many :products
  has_many :powders
  has_many :liquids
  has_many :otherMaterials
  has_many :seasonings
  has_many :bakes
  has_many :cuts
  has_many :otherTechniques
  has_many :discusses
  has_many :comments
  has_many :images, as: :imageable 
end
