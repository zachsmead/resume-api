class RenamingDescriptionColumnInCapstone < ActiveRecord::Migration[5.0]
  def change
  	rename_column :capstones, :destription, :description
  end
end
