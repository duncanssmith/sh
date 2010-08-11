class CreateDividends < ActiveRecord::Migration
  def self.up
    create_table :dividends do |t|
      t.integer :dividend
      t.integer :dividend_price
      t.date :date
      t.date :xddate
      t.integer :share_id
      t.integer :shares_held_on_xddate
      t.integer :tax

      t.timestamps
    end
  end

  def self.down
    drop_table :dividends
  end
end
