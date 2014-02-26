class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :fbUrl
      t.string :twitterUrl
      t.string :spoonUrl
      t.string :instagramUrl

      t.timestamps
    end
  end
end
