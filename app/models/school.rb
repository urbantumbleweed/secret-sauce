class School < ActiveRecord::Base
	has_many :users

  def count_active
    active_users = 0
    self.users.each do |user|
      if user.active
        active_users += 1
      end      
    end
    active_users
  end


end
