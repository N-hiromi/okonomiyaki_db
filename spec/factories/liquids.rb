FactoryBot.define do
  factory :liquid do
    name { "MyString" }
    cost { "" }
    description { "MyText" }
    warning { "MyString" }
    viscosity { 1.5 }
    density { 1.5 }
    ssa { 1.5 }
    materialCategory_id { "" }
  end
end
