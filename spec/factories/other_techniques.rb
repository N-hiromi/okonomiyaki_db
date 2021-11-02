FactoryBot.define do
  factory :other_technique do
    association :user
    trait :a do
      id { 1 }
      name { "Other_technique1" }
      tool { "MyString" }
      cost { 1 }
      description { "MyText" }
      warning { "MyText" }
      time { 1.5 }
      technique_category_id { 3 }
      user_id { 1 }
    end

    factory :product_other_technique, class: OtherTechnique do
      association :product
      id { 2 }
      name { "Other_technique2" }
      tool { "MyString" }
      cost { 1 }
      description { "MyText" }
      warning { "MyText" }
      time { 1.5 }
      technique_category_id { 3 }
      user_id { 2 }
    end
  end

  factory :category_other_technique, class: OtherTechnique do
    association :technique_category
    id { 3 }
    name { "Other_technique3" }
    tool { "MyString" }
    cost { 10 }
    description { "MyText" }
    warning { "MyText" }
    time { 1.5 }
    technique_category_id { 3 }
    user_id { 2 }
  end
end
