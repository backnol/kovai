class CreateInsta < ActiveRecord::Migration
  def change
    create_table :insta do |t|
      t.string   :remote_id
      t.string   :image_url
      t.datetime :posted_at
      t.text     :caption
      t.timestamps
    end
  end
end
