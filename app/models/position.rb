class Position < ActiveRecord::Base
	has_many :statuses
	has_and_belongs_to_many :pages

	def next_page(page)
		if page == nil
			return self.pages[0]
		else
			num = self.pages.index(page)
			next_page = ( num + 1 )
			if next_page <= self.pages.count
				return self.pages[next_page]
			else
				return 'complete'
			end
		end
	end

	def track
		if self.name.include?('contributor')
			if self.pages.last.index > self.pages.index() 
			else
			end
		else
			if self.name.include?('editor') || self.name.include?('writer')
				return 'editorial'
			elsif self.name.include?('photo') || self.name.include?('video')
				return 'photo'
			elsif self.name.include?('marketing') || self.name.include?('business') || self.name.include?('treasurer')
				return 'marketing'
			end
		end
	end
	
end
