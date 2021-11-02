FactoryBot.define do
  factory :user do   
    id { 1 }
    email { "test1email@com" }
    name { "test1" }
    department { "経理部" }
    password { "test1pass" }
  end
end
