class AddImageUrlToUser < ActiveRecord::Migration
  def change
    add_column :users, :image_url, :string, :after => :organization
  end
end
