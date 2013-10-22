class AddLinkToInsta < ActiveRecord::Migration
  def change
    add_column :insta, :link, :string
  end
end
