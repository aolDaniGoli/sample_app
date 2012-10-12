FactoryGirl.define do
  factory :user do
    name "Example"
    email "ex@mple.com"
    password "password"
    password_confirmation "password"
  end
end