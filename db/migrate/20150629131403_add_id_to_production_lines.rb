class AddIdToProductionLines < ActiveRecord::Migration
  def change
  	add_column :production_lines, :id, :integer
  end
end
