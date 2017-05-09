class Rename < ActiveRecord::Migration[5.0]
  def change
  	rename_column :skills, :skillName, :skill_name
  end
end
