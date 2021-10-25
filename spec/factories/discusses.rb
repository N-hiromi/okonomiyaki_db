FactoryBot.define do
  factory :discuss do
    association :user
    title { "Title" }
    text { "Text" }
    tag { "MyString" }
  end
end
