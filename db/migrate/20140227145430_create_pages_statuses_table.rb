class CreatePagesStatusesTable < ActiveRecord::Migration
  def change
    create_table :pages_statuses do |t|
    	t.integer :status_id
    	t.integer :page_id
    end
  end
end
