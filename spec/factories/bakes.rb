FactoryBot.define do
  factory :bake do
    name { "MyString" }
    tool { "MyString" }
    cost { "" }
    description { "MyText" }
    warning { "MyText" }
    temp { 1.5 }
    time { 1.5 }
  end
end
