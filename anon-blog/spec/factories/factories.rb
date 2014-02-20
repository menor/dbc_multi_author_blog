FactoryGirl.define do
  factory :user do
    name            "John"
    email           "john@example.com"
    hashed_password "test_password"
  end
end