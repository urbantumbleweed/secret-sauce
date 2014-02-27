class Position < ActiveRecord::Base
	has_many :statuses

	def next_page(page)
		num = self.pages.index(page)
		next_page = num + 1
		if next_page
			return next_page
		else
			return 'complete'
		end
	end

	def track
		if self.name =~ 'editor' || self.name == 'writer'
			return 'editorial'
		elsif self.name =~ 'photo' || self.name == 'video'
			return 'photo'
		elsif self.name =~ 'photo' || self.name == 'video'
			return 'photo'
		end
	end
	
end
