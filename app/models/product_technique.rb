class ProductTechnique < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :cut, optional: true
  belongs_to :bake, optional: true
  belongs_to :other_technique, optional: true

end
