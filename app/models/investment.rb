class Investment < ActiveRecord::Base
	has_one :share

		def self.search(search)
		if search
		  find(:all, :conditions => ['share_id LIKE ?', "%#{search}%"])
		else
			find(:all, :order => "invdate ASC")
    end

	end	

end
