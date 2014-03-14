class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :school_id
      t.string :name
      t.text :description
      t.text :success
      t.text :failure
      t.text :advice
      t.string :date

      t.timestamps
    end
  end
end
