require 'spec_helper'
describe Tweet do
  it { should have_db_column(:text).of_type(:string) }
  it { should validate_presence_of(:text) }

  it { should have_db_column(:remote_id).of_type(:integer) }
  it { should validate_presence_of(:remote_id) }
  it 'validates uniqueness of remote_id' do
    create(:tweet)
    should validate_uniqueness_of(:remote_id)
  end

  it { should have_db_column(:posted_at).of_type(:datetime) }
  it { should validate_presence_of(:posted_at) }
end