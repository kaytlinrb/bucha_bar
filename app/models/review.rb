class Review < ActiveRecord::Base

	validate :exists?

	def exists?
	  if !content_body || content_body == ""
	    errors.add(:content_body, "can't be blank...")
	  end
	end

  belongs_to :kombucha


end
