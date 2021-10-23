FactoryBot.define do
  factory :seasoning do
    association :user
    trait :a do
      id { 1 }
      name { "MyString" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      material_category_id { 3 }
      user_id { 1 }
    end

    trait :b do
      id { 2 }
      name { "MyString" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      material_category_id { 3 }
      user_id { 2 }
    end
  end
end
