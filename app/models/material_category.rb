class MaterialCategory < ApplicationRecord
  has_many :powders
  has_many :liquids
  has_many :otherMaterials
  has_many :seasonings
end
