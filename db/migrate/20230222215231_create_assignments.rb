class CreateAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :assignments do |t|
      t.string :subject
      t.string :name
      t.datetime :due_date
      t.string :content
      t.integer :grade
      t.boolean :complete
      t.references :student, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
