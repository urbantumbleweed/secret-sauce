class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :shortname
      t.string :facebook_url
      t.string :twitter_url
      t.string :spoon_url
      t.string :instagram_url
      t.string :color_1, :default => '#000'
      t.string :color_2, :default => '#fff'

      t.timestamps
    end
  end
end
