class School < ActiveRecord::Base
	has_many :users

  def users_active
    active_users = []
    self.users.each do |user|
      if user.active
        active_users << user
      end      
    end
    active_users
  end

  def users_inactive
    inactive_users = []
    self.users.each do |user|
      unless user.active
        inactive_users << user
      end      
    end
    inactive_users
  end

end
