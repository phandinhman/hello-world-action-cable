FactoryBot.define do
  factory :user do
    email {FFaker::Internet.email}
    password "Aa123456"
  end
end
