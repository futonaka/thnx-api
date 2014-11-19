class AddMessageToThnx < ActiveRecord::Migration
  def change
    add_column :thnxes, :message, :text, :after => :received_at
  end
end
