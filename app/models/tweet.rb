class Tweet < ActiveRecord::Base
  validates :remote_id,
            presence: true, 
            uniqueness: true
  validates :text,
            presence: true,
            length: { maximum: 140 }
  validates :posted_at,
            presence: true
end