class CreateCarts < ActiveRecord::Migration
  def self.up
    create_table :carts do |t|
      t.integer :user_id

      t.timestamps
    end
     add_index :carts, :user_id
     add_index :carts, :created_at	
  end

  def self.down
    drop_table :carts
  end
end