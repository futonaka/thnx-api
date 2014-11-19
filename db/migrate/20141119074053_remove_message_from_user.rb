class RemoveMessageFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :message, :text
  end
end
