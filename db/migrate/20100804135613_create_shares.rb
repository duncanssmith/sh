class CreateShares < ActiveRecord::Migration
  def self.up
    create_table :shares do |t|
      t.string :name
      t.string :code
      t.integer :current_price

      t.timestamps
    end
  end

  def self.down
    drop_table :shares
  end
end
