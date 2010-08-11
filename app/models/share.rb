class Share < ActiveRecord::Base
	has_many :investments
  has_many :dividends
end
