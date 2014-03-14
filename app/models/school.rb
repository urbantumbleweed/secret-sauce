class School < ActiveRecord::Base
	has_many :users
  has_many :events

  def users_active
    active_users = []
    self.users.each do |user|
      if user.active
        active_users << user
      end      
    end
    active_users.sort!{ |a,b| a.position <=> b.position }
  end

  def users_inactive
    inactive_users = []
    self.users.each do |user|
      unless user.active
        inactive_users << user
      end      
    end
    inactive_users.sort!{ |a,b| a.position <=> b.position }
  end

  def photo_directors
    photo_directors = []
    self.users_active.each do |user|
      if user.position.shortname == 'photo-director'
        photo_directors << user.name
      end
    end
    photo_directors
  end

  def editors_in_chief
    editors_in_chief = []
    self.users_active.each do |user|
      if user.position.shortname == 'editor-in-chief'
        editors_in_chief << user.name
      end
    end
    editors_in_chief
  end

end
