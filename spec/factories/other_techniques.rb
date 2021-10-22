FactoryBot.define do
  factory :other_technique do
    trait :a do
      id { 1 }
      name { "MyString" }
      tool { "MyString" }
      cost { 1 }
      description { "MyText" }
      warning { "MyText" }
      time { 1.5 }
      technique_category_id { 3 }
      user_id { 1 }
    end

    trait :b do
      id { 2 }
      name { "MyString" }
      tool { "MyString" }
      cost { 1 }
      description { "MyText" }
      warning { "MyText" }
      time { 1.5 }
      technique_category_id { 3 }
      user_id { 2 }
    end
  end
end
