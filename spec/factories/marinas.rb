# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :marina do
    name "MyString"
    address "MyText"
    address2 "MyText"
    town "MyText"
    county "MyText"
    country "MyText"
    managers ""
    boatowners ""
  end
end
