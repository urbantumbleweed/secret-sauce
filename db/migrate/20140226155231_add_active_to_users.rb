class AddActiveToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :active, :boolean, :default => true
  	add_column :users, :agreed, :boolean, :default => false
    add_column :users, :see_alum, :boolean, :default => false
  end
end
