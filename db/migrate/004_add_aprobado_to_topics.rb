class AddAprobadoToTopics < ActiveRecord::Migration[5.1]
  def self.up
    change_table :topics do |t|
      t.boolean :aprobado
    end
  end

  def self.down
    change_table :topics do |t|
      t.remove :aprobado
    end
  end
end
