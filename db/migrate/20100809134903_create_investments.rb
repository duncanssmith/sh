class CreateInvestments < ActiveRecord::Migration
  def self.up
    create_table :investments do |t|
      t.integer :investment
      t.date :date
      t.integer :share_id
      t.integer :pps
      t.integer :duty
      t.integer :commission
      t.integer :shares_purchased

      t.timestamps
    end
  end

  def self.down
    drop_table :investments
  end
end
