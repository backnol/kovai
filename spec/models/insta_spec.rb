require 'spec_helper'

describe Insta do
  it { should have_db_column(:image_url).of_type(:string) }
  it { should validate_presence_of(:image_url) }

  it { should have_db_column(:remote_id).of_type(:integer) }
  it { should validate_presence_of(:remote_id) }
  it 'remote_id should be unique' do
    create(:insta)
    should validate_uniqueness_of(:remote_id)
  end
      
  it { should have_db_column(:posted_at).of_type(:datetime) }
  it { should validate_presence_of(:posted_at) }
  
  it { should have_db_column(:caption).of_type(:text) }

  it { should have_db_column(:link).of_type(:string) }
end