class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :shortname, uniq: true

      t.timestamps
    end
  end
end
