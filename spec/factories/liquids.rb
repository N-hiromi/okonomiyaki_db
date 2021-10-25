FactoryBot.define do
  factory :liquid do
    association :user
    trait :a do
      id { 1 }
      name { "Liquid1" }
      cost { 10 }
      description { "MyText" }
      warning { "MyString" }
      viscosity { 1.5 }
      density { 1.5 }
      material_category_id { 2 }
      user_id { 1 }
    end

    trait :b do
      id { 2 }
      name { "Liquid2" }
      cost { 10 }
      description { "MyText" }
      warning { "MyString" }
      viscosity { 1.5 }
      density { 1.5 }
      material_category_id { 2 }
      user_id { 2 }
    end
  end

  factory :category_liquid, class: Liquid do
    association :material_category
    id { 3 }
      name { "Liquid3" }
      cost { 10 }
      description { "MyText" }
      warning { "MyString" }
      viscosity { 1.5 }
      density { 1.5 }
      material_category_id { 2 }
      user_id { 2 }
  end
end
