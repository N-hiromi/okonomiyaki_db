FactoryBot.define do
  factory :seasoning do
    name { "MyString" }
    tool { "MyString" }
    cost { "" }
    description { "MyText" }
    warning { "MyText" }
    materialCategory_id { "" }
  end
end
