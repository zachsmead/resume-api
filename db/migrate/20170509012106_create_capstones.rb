class CreateCapstones < ActiveRecord::Migration[5.0]
  def change
    create_table :capstones do |t|

      t.timestamps
    end
  end
end
