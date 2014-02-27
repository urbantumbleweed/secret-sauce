namespace :db do
  desc "clear database values"
  task :clear => :environment do
    School.delete_all
    User.delete_all
    Position.delete_all
  end
end