class Dividend < ActiveRecord::Base
	has_one :share
  validates_presence_of :dividend

	def self.search(search)
		if search
		  find(:all, :conditions => ['share_id LIKE ?', "%#{search}%"])
		else
			find(:all)
    end

	end

end
