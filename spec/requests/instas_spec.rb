require 'spec_helper'
include JsonHelper
describe "Instas", type: :api do
  let!(:insta) { FactoryGirl.create(:insta) }
  it 'index returns instas' do
    get '/instas'
    json_response.size.should == 1
    json_insta = json_response.first
    json_insta['id'].should == insta.id
    json_insta['caption'].should == 'This is an insta'
    json_insta['posted_at'].should_not == nil
    json_insta['image_url'].should == 'http://image.url'
  end
end