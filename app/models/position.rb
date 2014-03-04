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


	def track(page)
		if page == nil
			page = self.pages.first
		end
		if self.name =~ /contributor/i
			if self.pages.index(page) <= self.pages.index(Page.find_by_shortname('editorial_sections')) 
				return 'editorial'
			else
				return 'photo'
			end
		else
			if self.name =~ /editor/i || self.name =~ /writer/i
				return 'editorial'
			elsif self.name =~ /photo/i || self.name =~ /video/i
				return 'photo'
			elsif self.name =~ /marketing/i || self.name =~ /business/i || self.name =~ /treasurer/i
				return 'marketing'
			end
		end
	end
	
end
