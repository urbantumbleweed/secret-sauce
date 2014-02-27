class CreatePagesPositionTable < ActiveRecord::Migration
  def change
    create_table :pages_positions do |t|
    	t.integer :page_id
    	t.integer :position_id
    end
  end
end
