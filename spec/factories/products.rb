FactoryBot.define do
  factory :product do
    trait :a do
      id { 1 }
      name { "MyString" }
      price { 100 }
      cost { 20 }
      description { "Mytext" }
      app { 2 }
      juicy { 4 }
      taste { 5 }
      smell { 1 }
      bake_id { 1 }
      cut_id { 1 }
      other_technique_id { 1 }
      powder_id { 1 }
      liquid_id { 1 }
      seasoning_id { 1 }
      other_material_id { 1 }
      powder_weight { 10 }
      liquid_weight { 3 }
      seasoning_weight { 6 }
      other_material_weight { 10 }
      user_id { 1 }
    end

    trait :b do
      id { 2 }
      name { "MyString" }
      price { 100 }
      cost { 20 }
      description { "Mytext" }
      app { 2 }
      juicy { 4 }
      taste { 5 }
      smell { 2 }
      bake_id { 1 }
      cut_id { 1 }
      other_techzique_id { 1 }
      powder_id { 1 }
      liquid_id { 1 }
      seasoning_id { 1 }
      other_material_id { 1 }
      other_material_weight { 10 }
      powder_weight { 10 }
      liquid_weight { 3 }
      seasoning_weight { 6 }
      user_id { 2 }
    end
  end
end
