namespace :social do
  task get_tweets: :environment do
    last_tweet = Tweet.order('posted_at ASC').last
    
    social_api_keys = HashWithIndifferentAccess.new(YAML::load(File.open('keys/social.yml')))
    twitter_key = social_api_keys[:twitter]
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = twitter_key[:consumer_key]
      config.consumer_secret     = twitter_key[:consumer_secret]
      config.access_token        = twitter_key[:access_token]
      config.access_token_secret = twitter_key[:access_token_secret]
    end
    
    tweets = client.user_timeline(twitter_key[:user_name])
    tweets.collect(&:attrs).each do |attrs|
      created_at = Time.parse(attrs[:created_at])
      if last_tweet.nil? || created_at > last_tweet.posted_at
        ap Tweet.create!(remote_id: attrs[:id], text: attrs[:text], posted_at: created_at)
      end
    end
  end
end