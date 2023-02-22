# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_22_215231) do
  create_table "assignments", force: :cascade do |t|
    t.string "subject"
    t.string "name"
    t.datetime "due_date"
    t.string "content"
    t.integer "grade"
    t.boolean "complete"
    t.integer "student_id", null: false
    t.integer "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_assignments_on_student_id"
    t.index ["teacher_id"], name: "index_assignments_on_teacher_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "school_id"
    t.string "password_digest"
    t.integer "teacher_id", null: false
    t.integer "parent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_students_on_parent_id"
    t.index ["teacher_id"], name: "index_students_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "title"
    t.string "last_name"
    t.string "email"
    t.integer "grade_level"
    t.string "school"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assignments", "students"
  add_foreign_key "assignments", "teachers"
  add_foreign_key "students", "parents"
  add_foreign_key "students", "teachers"
end
