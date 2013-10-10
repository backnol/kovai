class Insta < ActiveRecord::Base
  validates :remote_id,
            presence: true,
            uniqueness: true
  validates :image_url,
            presence: true
  validates :posted_at,
            presence: true
end