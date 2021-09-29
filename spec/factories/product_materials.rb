FactoryBot.define do
  factory :product_material do
    product_id { "" }
    powder_id { "" }
    liquid_id { "" }
    seasoning_id { "" }
    otherMaterial_id { "" }
    powder_weight { 1.5 }
    liquid_weight { 1.5 }
    seasoning_weight { 1.5 }
    otherMaterial_weight { 1.5 }
  end
end
