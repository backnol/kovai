module SocialObject
  extend ActiveSupport::Concern

  included do
    default_scope order('posted_at ASC')
  end
end