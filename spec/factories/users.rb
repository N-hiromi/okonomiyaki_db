FactoryBot.define do
  factory :user do
    #trait :a do
      id { 1 }
      email { "test1email@com" }
      name { "テスト1" }
      department { "経理部" }
      password { "test1pass" }
    #end

    #trait :b do
    #trait :a do
    #  id { 2 }
    #  email { "test2email@com" }
    #  name { "テスト2" }
    #  department { "開発部" }
    #  password { "test2pass" }
    #end
  end
end
