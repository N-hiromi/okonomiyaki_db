FactoryBot.define do
  factory :powder do
    name { "MyString" }
    cost { "" }
    description { "MyText" }
    warning { "MyText" }
    particle_size { 1.5 }
    density { 1.5 }
    ssa { 1.5 }
    materialCategory_id { "" }
  end
end
