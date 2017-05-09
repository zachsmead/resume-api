class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :phone_number
      t.text :bio
      t.string :linkedin_url
      t.string :twitter
      t.string :site_url
      t.string :resume_url
      t.string :github_url
      t.string :photo

      t.timestamps
    end
  end
end
