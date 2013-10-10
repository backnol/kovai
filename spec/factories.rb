require 'factory_girl'
FactoryGirl.define do
  factory :tweet do
    text 'This is a tweet'
    remote_id { rand(9999999) }
    posted_at { Time.now }
  end
  factory :insta do
    caption 'This is an insta'
    remote_id { rand(9999999) }
    posted_at { Time.now }
    image_url 'http://image.url'
  end
end