FactoryBot.define do
  factory :user do
    trait :a do
      id { 1 }
      email { "test1@email.com" }
      name { "Mystring" }
      department { "経理部" }
      password { "test1pass" }
    end

    trait :b do
      id { 2 }
      email { "test2@email.com" }
      name { "Mystring" }
      department { "人事部" }
      password { "test1pass" }
    end
  end
end
