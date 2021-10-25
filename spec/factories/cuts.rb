FactoryBot.define do
  factory :cut do
    association :user
    trait :a do
      id { 1 }
      name { "Cut1" }
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
      name { "Cut2" }
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

  factory :category_cut, class: Cut do
    association :technique_category
    id { 3 }
    name { "Cut3" }
    tool { "MyString" }
    cost { 10 }
    description { "MyText" }
    warning { "MyText" }
    width { 1.5 }
    height { 1.5 }
    technique_category_id { 1 }
    user_id { 2 }
  end
end
