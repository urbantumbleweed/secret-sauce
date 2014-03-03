class User < ActiveRecord::Base
	has_many :statuses
	has_many :positions, through: :statuses
	has_many :scores
	belongs_to :school

	accepts_nested_attributes_for :positions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


	def name 
	 return self.first_name + " " + self.last_name
	end

	def self.active
		active = []
		User.order("lower(last_name)").all.each do |user|
			if user.active == true
				active << user
			end
		end
		active 
	end

	def position
		return self.positions.last
	end

	def status
		return self.statuses.last
	end

	def update_completion(position, page)
		if self.position == position
			unless self.status.pages.include?(page)
				self.status.pages << page
			end
		end
	end

	def percent_complete
		completed = self.status.pages.count.to_f
		total = self.position.pages.count.to_f
		percent_completed = (completed/total)*100
		percent_completed.to_i
	end

	def is_admin?
		self.position.shortname == 'editor-in-chief' || self.position.shortname == 'business-director' || self.position.shortname == 'photo-director' 
	end

end
