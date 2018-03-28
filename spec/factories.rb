FactoryGirl.define do
  factory :user do
    name     "Example User"
    email    "example@railstutorial.org"
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end
end