class CreateTopics < ActiveRecord::Migration[5.1]
  def self.up
    create_table :topics do |t|
      t.string :nombre
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :topics
  end
end
