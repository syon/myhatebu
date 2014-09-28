class CreateTableHotentries < ActiveRecord::Migration
  def self.up
    create_table :hotentries do |t|
      t.integer :eid
      t.string  :title
      t.string  :url
      t.string  :desc
      t.integer :users
      t.string  :thumb
      t.string  :domain
      t.string  :date
      t.string  :getdate
      t.timestamps
    end
  end
  
  def self.down
    drop_table :hotentries
  end
end
