class Status < ActiveRecord::Base
	belongs_to :position
	belongs_to :user
	has_and_belongs_to_many :pages

end
