class Capstone < ActiveRecord::Migration[5.0]
  def change
  	add_column :capstones, :name, :string
  	add_column :capstones, :destription, :text
  	add_column :capstones, :url, :string
  	add_column :capstones, :screenshot, :string
  end
end
