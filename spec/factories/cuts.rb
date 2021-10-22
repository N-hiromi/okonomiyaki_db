FactoryBot.define do
  factory :cut do
    trait :a do
      id { 1 }
      name { "MyString" }
      tool { "MyString" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      width { 1.5 }
      height { 1.5 }
      technique_category_id { 2 }
      user_id { 1 }
    end

    trait :b do
      id { 2 }
      name { "MyString" }
      tool { "MyString" }
      cost { 10 }
      description { "MyText" }
      warning { "MyText" }
      width { 1.5 }
      height { 1.5 }
      technique_category_id { 2 }
      user_id { 2 }
    end
  end
end
