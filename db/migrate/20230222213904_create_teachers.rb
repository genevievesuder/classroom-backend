class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :title
      t.string :last_name
      t.string :email
      t.integer :grade_level
      t.string :school
      t.string :password_digest

      t.timestamps
    end
  end
end
