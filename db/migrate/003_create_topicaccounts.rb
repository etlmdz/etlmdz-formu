class CreateTopicaccounts < ActiveRecord::Migration[5.1]
  def self.up
    create_table :topicaccounts do |t|
      t.integer :account_id
      t.integer :topic_id
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :topicaccounts
  end
end
