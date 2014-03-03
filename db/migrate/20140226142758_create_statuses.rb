class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :position_id
      t.integer :user_id
      t.timestamps
    end
  end
end
