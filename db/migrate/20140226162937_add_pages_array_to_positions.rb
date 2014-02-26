class AddPagesArrayToPositions < ActiveRecord::Migration
  def change
  	add_column :positions, :pages, :string, array: true, default: '{}'
  end
end
