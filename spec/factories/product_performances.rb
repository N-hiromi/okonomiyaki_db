FactoryBot.define do
  factory :product_performance do
    product_id { "MyString" }
    smell { 1.5 }
    taste { 1.5 }
    juicy { 1.5 }
    app { "" }
  end
end
