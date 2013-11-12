class Insta < ActiveRecord::Base
  include SocialObject

  validates :remote_id,
            presence: true,
            uniqueness: true
  validates :image_url,
            presence: true
  validates :posted_at,
            presence: true
  validates :link,
            presence: true
end