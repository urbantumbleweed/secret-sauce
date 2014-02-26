class User < ActiveRecord::Base
	has_many :statuses
	has_many :positions, through: :statuses
	belongs_to :school

	accepts_nested_attributes_for :positions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


	def name 
	 return self.first_name + self.last_name
	end

	def position
		return self.positions.last.name
	end


end
