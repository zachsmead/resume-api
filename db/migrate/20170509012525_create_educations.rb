class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :start_date
      t.string :end_date
      t.string :degree
      t.string :university_name
      t.text :details

      t.timestamps
    end
  end
end
