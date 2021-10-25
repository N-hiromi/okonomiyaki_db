FactoryBot.define do
  factory :other_material do
    association :user
    trait :a do
      id { 1 }
      name { "Other_material1" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      material_category_id { 1 }
      user_id { 1 }
    end

    trait :b do
      id { 2 }
      name { "Other_material2" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      material_category_id { 1 }
      user_id { 2 }
    end
  end

  factory :category_other_material, class: OtherMaterial do
    association :material_category
    id { 2 }
      name { "Other_material3" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      material_category_id { 3 }
      user_id { 2 }
  end
end
