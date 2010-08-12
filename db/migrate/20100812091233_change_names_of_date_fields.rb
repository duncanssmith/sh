class ChangeNamesOfDateFields < ActiveRecord::Migration
  def self.up
		rename_column :investments, :date, :invdate
		rename_column :dividends, :date, :divdate
  end

  def self.down
		rename_column :investments, :invdate, :date
		rename_column :dividends, :divdate, :date
  end
end
