# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140520022532) do

  create_table "employees", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "main_phone"
    t.string   "alternative_phone"
    t.integer  "ssn_number"
    t.date     "birth_date"
    t.string   "email"
    t.text     "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_phone"
    t.string   "former_occupation"
    t.string   "former_business_name"
    t.text     "former_employment_address"
    t.date     "ymen_start_date"
    t.string   "church"
    t.string   "other_children_in_household"
    t.string   "marital_status"
    t.date     "anniversary_date"
    t.string   "background_check_complete"
    t.string   "high_school_attended"
    t.string   "reference_name"
    t.string   "reference_phone_number"
    t.string   "w2_completed"
    t.string   "contract_signed"
    t.text     "family_notes"
    t.text     "other_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grades", force: true do |t|
    t.integer  "student_id"
    t.float    "cumulative_gpa"
    t.float    "previous_year_gpa"
    t.float    "previous_year_absences"
    t.integer  "current_q1_absences"
    t.integer  "current_q2_absences"
    t.integer  "current_q3_absences"
    t.integer  "current_q4_absences"
    t.string   "current_q1_grades"
    t.string   "current_q2_grades"
    t.string   "current_q3_grades"
    t.string   "current_q4_grades"
    t.string   "student_promoted"
    t.string   "class_rank"
    t.text     "colleges_considered"
    t.string   "application_complete"
    t.integer  "num_college_trips"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parents", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "main_phone"
    t.string   "alternative_phone"
    t.date     "birth_date"
    t.string   "email"
    t.text     "address"
    t.string   "zipcode"
    t.string   "occupation"
    t.string   "business_name"
    t.text     "business_address"
    t.string   "point_of_contact"
    t.date     "ymen_start_date"
    t.string   "church"
    t.string   "other_children_in_household"
    t.string   "martial_status"
    t.date     "anniversary_date"
    t.string   "transcript_release_form"
    t.string   "signed_emergency_slip"
    t.string   "fafsa_completed"
    t.string   "application_complete"
    t.string   "high_school_attended"
    t.string   "college_attended"
    t.string   "current_parent_involvement_activities"
    t.integer  "current_parent_involvement_hours"
    t.text     "family_notes"
    t.text     "other_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parents_students", force: true do |t|
    t.integer  "parent_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.integer  "student_id"
    t.string   "project_name"
    t.string   "project_year"
    t.string   "project_hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "cell_phone"
    t.string   "home_phone"
    t.text     "address"
    t.string   "zipcode"
    t.string   "social_security_number"
    t.date     "birth_date"
    t.string   "email"
    t.string   "current_school"
    t.string   "previous_school"
    t.string   "grade_level"
    t.string   "point_of_contact"
    t.date     "ymen_start_date"
    t.string   "church"
    t.string   "resume_completed"
    t.string   "leadership_roles"
    t.string   "other_organizations_involved"
    t.integer  "num_current_mentors"
    t.string   "names_of_current_mentors"
    t.text     "family_notes"
    t.text     "other_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: true do |t|
    t.integer  "student_id"
    t.text     "ymen_trips"
    t.integer  "num_ymen_camping_trips"
    t.text     "camping_locations"
    t.integer  "num_vocational_trips"
    t.text     "businesses_visited"
    t.integer  "num_cultural_trips"
    t.text     "cultural_places_visited"
    t.text     "ymen_trips_fun_listed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

  create_table "volunteers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "cell_phone"
    t.string   "home_phone"
    t.date     "birth_date"
    t.string   "email"
    t.text     "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_phone"
    t.string   "occupation"
    t.string   "business_name"
    t.string   "point_of_contact"
    t.date     "ymen_start_date"
    t.string   "church"
    t.string   "other_children_in_household"
    t.string   "marital_status"
    t.date     "anniversary_date"
    t.string   "background_check_completed"
    t.string   "application_completed"
    t.string   "high_school_attended"
    t.string   "college_attended"
    t.text     "previous_volunteer_places"
    t.string   "reference_name"
    t.string   "reference_phone_number"
    t.string   "volunteer_days"
    t.string   "volunteer_frequency"
    t.string   "volunteer_hours_monthly"
    t.text     "family_notes"
    t.text     "other_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
