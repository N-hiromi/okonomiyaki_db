FactoryBot.define do
  factory :cut do
    name { "MyString" }
    tool { "MyString" }
    cost { "" }
    description { "MyText" }
    warning { "MyText" }
    width { 1.5 }
    height { 1.5 }
  end
end
