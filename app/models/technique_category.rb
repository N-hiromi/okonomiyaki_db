class TechniqueCategory < ApplicationRecord
  has_many :bakes
  has_many :cuts
  has_many :otherTechniques
end
