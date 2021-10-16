class MaterialCategory < ApplicationRecord
  has_many :powders
  has_many :liquids
  has_many :other_materials
  has_many :seasonings
end
