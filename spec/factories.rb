FactoryGirl.define do
  factory :user do
    firstname     "Michael"
    lastname "Something"
    email    "michael@example.com"
    businesscategory "IT"
    password "foobar"
    password_confirmation "foobar"
  end
end