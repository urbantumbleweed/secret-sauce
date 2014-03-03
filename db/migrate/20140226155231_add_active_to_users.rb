class AddActiveToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :active, :boolean, :default => true
  	add_column :users, :agreed, :boolean, :default => false
  	add_column :users, :quiz_style, :integer
  	add_column :users, :quiz_expectations, :integer
  end
end
