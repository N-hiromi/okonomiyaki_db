FactoryBot.define do
  factory :powder do
    association :user
    trait :a do
      id { 1 }
      name { "MyString" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      particle_size { 1.5 }
      density { 1.5 }
      ssa { 1.5 }
      material_category_id { 1 }
      user_id { 1 }
    end

    trait :b do
      id { 2 }
      name { "MyString" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      particle_size { 1.5 }
      density { 1.5 }
      ssa { 1.5 }
      material_category_id { 1 }
      user_id { 2 }
    end
  end
end
