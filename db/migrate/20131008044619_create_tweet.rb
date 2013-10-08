class CreateTweet < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer  :remote_id
      t.string   :text
      t.datetime :posted_at
      t.timestamps
    end
  end
end
