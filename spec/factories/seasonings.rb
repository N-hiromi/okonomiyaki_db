FactoryBot.define do
  factory :seasoning do
    association :user
    trait :a do
      id { 1 }
      name { "Seasoning1" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      material_category_id { 3 }
      user_id { 1 }
    end

    factory :product_seasoning, class: Seasoning do
      association :product
      id { 2 }
      name { "Seasoning2" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      material_category_id { 3 }
      user_id { 2 }
    end
  end

  factory :category_seasoning, class: Seasoning do
    association :material_category
    id { 2 }
      name { "Seasoning3" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      material_category_id { 3 }
      user_id { 2 }
  end
end
