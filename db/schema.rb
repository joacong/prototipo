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

ActiveRecord::Schema.define(version: 20150826192344) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "active_workflow_steps", force: true do |t|
    t.integer  "number"
    t.integer  "workflow_template_id"
    t.integer  "active_workflow_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_workflow_steps", ["active_workflow_id"], name: "index_active_workflow_steps_on_active_workflow_id"
  add_index "active_workflow_steps", ["workflow_template_id"], name: "index_active_workflow_steps_on_workflow_template_id"

  create_table "active_workflows", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "company_areas", force: true do |t|
    t.string   "name"
    t.integer  "company_area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "company_areas", ["company_area_id"], name: "index_company_areas_on_company_area_id"

  create_table "documents", force: true do |t|
    t.integer  "active_workflow_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "documents", ["active_workflow_id"], name: "index_documents_on_active_workflow_id"

  create_table "messages", force: true do |t|
    t.integer  "user_id"
    t.text     "content"
    t.integer  "active_workflow_step_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["active_workflow_step_id"], name: "index_messages_on_active_workflow_step_id"
  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.integer  "company_area_id"
    t.integer  "role_id"
  end

  add_index "users", ["company_area_id"], name: "index_users_on_company_area_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["role_id"], name: "index_users_on_role_id"
  add_index "users", ["username"], name: "index_users_on_username", unique: true

  create_table "worflow_requests", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "worflow_requests", ["user_id"], name: "index_worflow_requests_on_user_id"

  create_table "workflow_template_steps", force: true do |t|
    t.integer  "workflow_template_step_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "workflow_template_steps", ["workflow_template_step_id"], name: "index_workflow_template_steps_on_workflow_template_step_id"

  create_table "workflow_templates", force: true do |t|
    t.string   "name"
    t.integer  "workflow_template_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "workflow_templates", ["workflow_template_id"], name: "index_workflow_templates_on_workflow_template_id"

end
