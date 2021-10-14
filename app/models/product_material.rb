class ProductMaterial < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :powder, optional: true
  belongs_to :liquid, optional: true
  belongs_to :seasoning, optional: true
  belongs_to :otherMaterial, optional: true
end
