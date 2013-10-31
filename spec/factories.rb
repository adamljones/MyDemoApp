FactoryGirl.define do
  factory :user do
    sequence(:firstname)  { |n| "Person Firstname #{n}" }
    sequence(:lastname)  { |n| "Person Lastname #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    businesscategory "IT"
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end
end