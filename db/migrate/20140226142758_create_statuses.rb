class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :position_id
      t.integer :user_id
      t.integer :quiz_1
      t.integer :quiz_2
      t.integer :quiz_3
      t.timestamps
    end
  end
end
