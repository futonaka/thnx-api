class CreateThnxes < ActiveRecord::Migration
  def change
    create_table :thnxes do |t|
      t.integer :from
      t.integer :to
      t.datetime :sent_at
      t.datetime :received_at

      t.timestamps
    end
  end
end
