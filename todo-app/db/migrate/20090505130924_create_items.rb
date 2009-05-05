class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :id
      t.string :category
      t.text :item
      t.boolean :completed

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
