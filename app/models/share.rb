class Share < ActiveRecord::Base
	has_many :investments
  has_many :dividends

	def self.search(search)
		if search
		  find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
		else
			find(:all, :order => "code ASC")
    end

	end	

end
