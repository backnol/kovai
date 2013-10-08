require 'factory_girl'
FactoryGirl.define do
  factory :tweet do
    text 'This is a tweet'
    remote_id 122231
    created_at { Time.now }
  end
end