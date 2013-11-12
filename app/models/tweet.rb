class Tweet < ActiveRecord::Base
  include SocialObject

  validates :remote_id,
            presence: true, 
            uniqueness: true
  validates :text,
            presence: true
  validates :posted_at,
            presence: true
end