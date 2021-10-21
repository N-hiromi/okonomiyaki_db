class ProductMaterial < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :powder, optional: true
  belongs_to :liquid, optional: true
  belongs_to :seasoning, optional: true
  belongs_to :other_material, optional: true
  validates :powder_id, presence: true
end
