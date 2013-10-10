require 'spec_helper'
include JsonHelper
describe "Tweets", type: :api do
  let!(:tweet) { FactoryGirl.create(:tweet) }
  it 'index returns tweets' do
    get '/tweets'
    json_response.size.should == 1
    parsed_tweet = json_response.first
    parsed_tweet['id'].should == tweet.id
    parsed_tweet['text'].should == 'This is a tweet'
    parsed_tweet['posted_at'].should_not == nil
  end
end