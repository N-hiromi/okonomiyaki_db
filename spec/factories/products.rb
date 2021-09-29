FactoryBot.define do
  factory :product do
    name { "MyString" }
    price { "" }
    cost { "" }
    productTechnique_id { "" }
    productPerformance_id { "" }
    measurementCondition_id { "" }
    productMaterial_id { "" }
    measuringEquipment_id { "" }
  end
end
