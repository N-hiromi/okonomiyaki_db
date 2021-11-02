FactoryBot.define do
  factory :bake do
    association :user
    trait :a do
      id { 1 }
      name { "Bake1" }
      tool { "MyString" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      temp { 1.5 }
      time { 1.5 }
      technique_category_id { 1 }
      user_id { 1 }
    end

    factory :product_bake, class: Bake do
      association :product
      id { 2 }
      name { "Bake2" }
      tool { "MyString" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      temp { 1.5 }
      time { 1.5 }
      technique_category_id { 1 }
      user_id { 2 }
    end
  end

  factory :category_bake, class: Bake do
    association :technique_category
    id { 3 }
    name { "Bake3" }
    tool { "MyString" }
    cost { 10 }
    description { "MyText" }
    warning { "MyText" }
    temp { 1.5 }
    time { 1.5 }
    technique_category_id { 1 }
    user_id { 2 }
  end
end
