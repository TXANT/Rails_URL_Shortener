class CreateUrls < ActiveRecord::Migration
  def self.up
    create_table :urls do |t|
      t.integer :id
      t.string :short
      t.string :long

      t.timestamps
    end
  end

  def self.down
    drop_table :urls
  end
end
