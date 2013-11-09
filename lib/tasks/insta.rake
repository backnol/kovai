namespace :social do
  task get_instas: :environment do
    last_insta = Insta.order('posted_at ASC').last
    
    social_api_keys = HashWithIndifferentAccess.new(YAML::load(File.open('keys/social.yml')))
    instagram_key = social_api_keys[:instagram]
    Instagram.configure do |config|
      config.client_id = instagram_key[:client_id]
      config.access_token = instagram_key[:access_token]
    end
    
    Instagram.user_recent_media(instagram_key[:user_id]).each do |insta_json|
      created_time = Time.strptime(insta_json[:created_time], '%s')
      if last_insta.nil? || created_time > last_insta.posted_at
        caption = insta_json[:caption] ? insta_json[:caption][:text] : nil
        insta = Insta.create!(remote_id: insta_json[:id].split('_')[0],
                              image_url: insta_json[:images][:thumbnail][:url],
                              link: insta_json[:link],
                              caption:   caption,
                              posted_at: created_time)
        ap insta
      end
    end
  end
end