class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :school_id
      t.string :password_digest
      t.references :teacher, null: false, foreign_key: true
      t.references :parent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
