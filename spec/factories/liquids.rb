FactoryBot.define do
  factory :liquid do
    trait :a do
      id { 1 }
      name { "MyString" }
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
      name { "MyString" }
      cost { 10 }
      description { "MyText" }
      warning { "MyString" }
      viscosity { 1.5 }
      density { 1.5 }
      material_category_id { 2 }
      user_id { 2 }
    end
  end
end
