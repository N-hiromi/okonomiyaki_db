FactoryBot.define do
  factory :other_material do
    association :user
    trait :a do
      id { 1 }
      name { "MyString" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      material_category_id { 1 }
      user_id { 1 }
    end

    trait :b do
      id { 2 }
      name { "MyString" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      material_category_id { 1 }
      user_id { 2 }
    end
  end
end
