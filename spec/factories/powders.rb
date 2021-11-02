FactoryBot.define do
  factory :powder do
    association :user
    trait :a do
      id { 1 }
      name { "Powder1" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      particle_size { 1.5 }
      density { 1.5 }
      ssa { 1.5 }
      material_category_id { 1 }
      user_id { 1 }
    end

    factory :product_powder, class: Powder do
      association :product_anything
      id { 2 }
      name { "Powder2" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      particle_size { 1.5 }
      density { 1.5 }
      ssa { 1.5 }
      material_category_id { 1 }
      user_id { 2 }
      product_id { 2 }
    end
  end

  factory :category_powder, class: Powder do
    association :material_category
    id { 3 }
    name { "Powder3" }
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
